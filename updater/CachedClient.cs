using System;
using System.IO;
using System.Net;
using System.Web;
using Nuke.Common;

namespace updater
{
    public class CachedClient : IDisposable
    {

        private readonly WebClient wc;

        public CachedClient()
        {
            wc = new WebClient();
        }

        public void Dispose()
        {
            wc.Dispose();
        }

        internal string CachedDownloadString(string ncrunchSite)
        {
            wc.Headers.Add("Referer", ncrunchSite);

            Logger.Trace("Added Referer: " + wc.Headers["Referer"]);

            var tmpDir = Path.GetTempPath();
            var tmpFile = Path.Combine(tmpDir, HttpUtility.UrlEncode(ncrunchSite));

            Logger.Trace("TempFile for {0} is {1}", ncrunchSite, tmpFile);

            // 11:12 < 11:15-1 
            if (!File.Exists(tmpFile) || File.GetLastWriteTimeUtc(tmpFile) < DateTime.UtcNow.AddHours(-1))
            {
                Logger.Info("Re-Download {0}", ncrunchSite);
                var content = wc.DownloadString(ncrunchSite);
                File.WriteAllText(tmpFile, content);
            }

            return File.ReadAllText(tmpFile);
        }

        internal void CachedDownloadFile(Uri downloadLink, string targetPath)
        {
            var dir = Path.GetDirectoryName(targetPath);
            if (!Directory.Exists(dir))
                Directory.CreateDirectory(dir);

            if (!File.Exists(targetPath))
            {
                Logger.Trace("Downloading from {0} --> {1}", downloadLink, targetPath);
                wc.DownloadFile(downloadLink, targetPath);
            }
            else
            {
                Logger.Trace("Using cached Download from {0}", targetPath);
            }
        }
    }
}