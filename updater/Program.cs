using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection.Metadata.Ecma335;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using Nuke.Common;
using Nuke.Common.Tooling;

namespace updater
{

    public class Program
    {
        private static void Main(string[] args)
        {
            Logger.Info("NCrunch-Updater");


            var workingDir = GetGitBase(Environment.CurrentDirectory);

            Logger.Trace("Working in {0}", workingDir);


            using (var client = new CachedClient())
            {

                var ncrunchSite = "https://www.ncrunch.net";

                var webSiteContent = client.CachedDownloadString(ncrunchSite);
                var majorVersion = GetLatestVersion(webSiteContent);
                Logger.Info("Aktuelle Version: " + majorVersion);

                var vsVersions = new List<NCrunchProgram>
                {
                    new NCrunchProgram
                    {
                        ChocolateyPackageName = "ncrunch-gridnodeserver",
                        Name = "gridnode",
                        DownloadName = "GridNodeServer",
                        MarketingName = "NCrunch Grid Node Server"
                    },
                    new NCrunchProgram
                    {
                        ChocolateyPackageName = "ncrunch-console",
                        Name = "Console",
                        DownloadName = "Console",
                        MarketingName = "NCrunch Console"
                    },
                    NCrunchProgram.CreateVsProgram(2019),
                    NCrunchProgram.CreateVsProgram(2017),
                    NCrunchProgram.CreateVsProgram(2015),
                    NCrunchProgram.CreateVsProgram(2013),
                    NCrunchProgram.CreateVsProgram(2012),
                    NCrunchProgram.CreateVsProgram(2010),
                    NCrunchProgram.CreateVsProgram(2008)
                };
                foreach (var vsVersion in vsVersions)
                {
                    Logger.Block(vsVersion.ChocolateyPackageName);

                    Logger.Info("Processing " + vsVersion.ChocolateyPackageName + "/" + vsVersion.Name + "...");
                    Uri downloadLink = null;

                    if (majorVersion != null)
                    {
                        var url = ncrunchSite + "/download/getMsi?version=" + majorVersion + "&vs=" + vsVersion.Name;
                        webSiteContent = client.CachedDownloadString(url);
                        downloadLink = GetDownloadLink(webSiteContent, vsVersion.DownloadName);
                    }

                    if (downloadLink == null)
                    {
                        Logger.Error("Fehler: Downloadlink null");
                        continue;
                    }

                    Logger.Info("Checking / Downloading ... " + downloadLink);

                    var re = new Regex("(NCrunch.*msi)$");
                    var match = re.Match(downloadLink.LocalPath);
                    var filename = match.Groups[0].ToString();

                    var targetPath = Path.Combine(workingDir, "Local.Cache", filename);

                    client.CachedDownloadFile(downloadLink, targetPath);

                    string sha256 = FileHelper.GetChecksum(targetPath);


                    if (sha256 == null)
                    {
                        Logger.Error("Error: Kann SHA256 nicht erkennen. ");
                        continue;
                    }
                    Logger.Trace("SHA256: " + sha256);

                    var nuspecPath = WritePackage(vsVersion, downloadLink, sha256, workingDir);
                    if (nuspecPath.nuspec == null)
                    {
                        Logger.Success("WritePackage hat keine neue Datei gebracht, d.h. kein Update nötig.");
                        continue;
                    }

                    var nupkgPath = PackPackage(nuspecPath.nuspec);
                    if (nupkgPath == null)
                    {
                        Logger.Error("PackPackage hat kein Ergebnis gebracht.");
                        continue;
                    }

                    var result = PushPackage(nupkgPath);
                    if (result == 0)
                    {
                        var pt1 = ProcessTasks.StartProcess("git", $"add {nuspecPath.nuspec}").AssertWaitForExit();
                        var pt2 = ProcessTasks.StartProcess("git", $"add {nuspecPath.ps}").AssertWaitForExit();
                    }
                }

            }
        }

        private static string PackPackage(string nuspecPath)
        {
            var proc = ProcessTasks.StartProcess("choco", $"pack {nuspecPath}").AssertWaitForExit();

            // Chocolatey v0.10.11
            // Attempting to build package from 'ncrunch-console.nuspec'.
            // Successfully created package 'D:\Privat\hbre-chocolatey\ncrunch-console\ncrunch-console.3.23.10.nupkg'

            var regEx = new Regex("Successfully created package '(.*)'");
            foreach (var line in proc.Output)
            {

                var match = regEx.Match(line.Text);
                if (match.Success)
                {
                    Logger.Trace("Text: {0}, Result{1}", line.Text, match.Groups[1].Value);
                    return match.Groups[1].Value;
                }
            }
            return null;
        }

        private static int PushPackage(string nupkgPath)
        {
            Logger.Info("Pushing {0}", nupkgPath);
            var pt = ProcessTasks.StartProcess("choco", $"push {nupkgPath}").AssertWaitForExit();
            Logger.Success("Pushed: {0}", pt.ExitCode);

            return pt.ExitCode;
        }

        private static bool GitChanged(string nuspecPath)
        {
            var result = ProcessTasks.StartProcess("git", $"status {nuspecPath}").AssertWaitForExit();

            var filename = Path.GetFileName(nuspecPath);

            foreach (var line in result.Output)
            {
                if (line.Text.Contains(filename))
                {
                    Logger.Info("nuspec changed: {0}", line.Text);
                    return true;
                }
            }

            return false;
        }

        private static string GetGitBase(string workingDir)
        {
            var gitDir = Path.Combine(workingDir, ".git");
            if (Directory.Exists(gitDir))
                return workingDir;

            var parent = new DirectoryInfo(workingDir).Parent;
            if (parent?.Exists != null)
            {
                return GetGitBase(parent.FullName);
            }

            return Path.Combine("/", "Users", "henning", "dev", "chocolatey");
        }

        public static (string nuspec, string ps) WritePackage(NCrunchProgram ncp, Uri downloadLink, string sha256, string workingDir)
        {
            Logger.Trace("Write Package ... {0}", ncp.ChocolateyPackageName);

            var dir = Path.Combine(workingDir, ncp.ChocolateyPackageName);
            var toolsDir = Path.Combine(dir, "tools");

            Directory.CreateDirectory(dir);
            Directory.CreateDirectory(toolsDir);

            var regex = new Regex("_(\\d+).(\\d+).\\d+.(\\d+).msi");
            var match = regex.Match(downloadLink.LocalPath);
            var detailVersion = match.Groups[1] + "." + match.Groups[2] + "." + match.Groups[3];

            Logger.Success("WritePackage: Detected Version {0} for {1}", detailVersion, ncp.ChocolateyPackageName);

            var nuspecPath = Path.Combine(dir, ncp.ChocolateyPackageName + ".nuspec");

            File.WriteAllText(nuspecPath,
                GetNuspecContent(ncp, detailVersion), Encoding.UTF8);

            var psPath = Path.Combine(toolsDir, "chocolateyInstall.ps1");

            File.WriteAllText(psPath,
                GetChocolateyInstall(ncp, downloadLink, sha256), Encoding.UTF8);

            if (GitChanged(nuspecPath))
                return (nuspecPath, psPath);

            return (null, null);
        }

        private static string GetChocolateyInstall(NCrunchProgram ncp, Uri downloadLink, string sha256)
        {
            return $@"$ErrorActionPreference = 'Stop'

$packageName='{ncp.ChocolateyPackageName}'
$url32='{downloadLink}'
$checksum32='{sha256}'
 
$ErrorActionPreference = 'Stop'
 
$packageArgs = @{{
  packageName            = $packageName
  fileType               = 'MSI'
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  validExitCodes         = @(0)  
  silentArgs             = '/quiet'
}}

Install-ChocolateyPackage @packageArgs
";
        }

        private static string GetNuspecContent(NCrunchProgram ncp, string version)
        {
            return $@"<?xml version=""1.0"" encoding=""utf-8""?>
<package xmlns=""http://schemas.microsoft.com/packaging/2015/06/nuspec.xsd"">
  <metadata>
    <version>{version}</version>
    <authors>Remco Software Ltd.</authors>
	<licenseUrl>http://www.ncrunch.net/legal/eula</licenseUrl>
    <projectUrl>http://www.ncrunch.net/</projectUrl>
    <iconUrl>https://cdn.rawgit.com/TomOne/various/28ace8fd94797c2707d2a16fa8cd87bd1c8f8ce2/ncrunch.png</iconUrl>
    <copyright>NCrunch</copyright>
    <requireLicenseAcceptance>false</requireLicenseAcceptance>
    <releaseNotes>http://www.ncrunch.net/documentation/overview</releaseNotes>
	  <id>{ncp.ChocolateyPackageName}</id>
    <packageSourceUrl>https://github.com/hbre/chocolatey</packageSourceUrl>
    <owners>Henning Bredenkötter</owners>
    <title>{ncp.MarketingName}</title>
    <summary>NCrunch is an automated concurrent testing tool for Visual Studio.  It intelligently runs automated tests so that you don't have to, and gives you a huge amount of useful information about your tested code, such as code coverage and performance metrics, inline in your IDE while you type.</summary>
    <description>What is this? https://www.ncrunch.net/documentation/guides_distributed-processing NCrunch is an automated concurrent testing tool for Visual Studio.  It intelligently runs automated tests so that you don't have to, and gives you a huge amount of useful information about your tested code, such as code coverage and performance metrics, inline in your IDE while you type.</description>
    <tags>ncrunch visualstudio {ncp.ChocolateyPackageName} admin testing automation</tags>
    <docsUrl>https://www.ncrunch.net/documentation/overview</docsUrl>
    <bugTrackerUrl>https://forum.ncrunch.net</bugTrackerUrl>
  </metadata>
  <files>
    <file src=""tools\**"" target=""tools"" />
  </files>
</package>
";
        }

        public static string GetSha256ForString(string value)
        {
            var retVal = new StringBuilder();

            using (var hash = SHA256.Create())
            {
                var result = hash.ComputeHash(Encoding.UTF8.GetBytes(value));

                foreach (var b in result)
                    retVal.Append(b.ToString("x2"));
            }

            return retVal.ToString();
        }

        public static string GetLatestVersion(string homepageContent)
        {
            var pattern = "latest version (\\d.\\d+) \\(";

            var re = new Regex(pattern);
            var match = re.Match(homepageContent);

            if (match.Success)
                return match.Groups[1].Value;

            return null;
        }

        public static Uri GetDownloadLink(string homepageContent, string vsNameDownloadPage)
        {
            var pattern = @"https:\/\/s3.amazonaws.com\/downloads.ncrunch.net\/NCrunch_" + vsNameDownloadPage +
                          @"_(\d+).(\d+).\d+.(\d+).msi";

            var re = new Regex(pattern);
            var match = re.Match(homepageContent);

            if (match.Success)
                return new Uri(match.ToString());

            Logger.Error("Cant find download-link for " + vsNameDownloadPage + " in " + homepageContent);

            return null;
        }


    }
}