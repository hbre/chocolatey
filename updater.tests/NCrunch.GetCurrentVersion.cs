using Xunit;

namespace updater.tests
{
    public class GetLatestVersionTest
    {
        [Fact]
        public void CheckSha256()
        {
            Assert.Equal(
                "92f2bc50da49f07101679c70be51a2d439faf07f742a2da32b72356549847a7c",
                Program.GetSha256ForString("THISISMYSTRING"));
        }

        [Fact]
        public void GetUrlTest()
        {
            var downloadSite =
                "<div id=\"bodyContent\">\n\t" +
                "<h1>Now Downloading ...</h1>\n\t<p>Your download should be starting automatically.  If for some reason it doesn't, " +
                "<a href=\"http://downloads.ncrunch.net/NCrunch_Console_3.23.0.10.msi\">try this link instead</a>.</p>" +
                "\n\t<iframe id=\"downloadFrame\" src=\"https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_3.23.0.10.msi\"></iframe>\n";

            var url = Program.GetDownloadLink(downloadSite, "Console");
            Assert.Equal("http://downloads.ncrunch.net/NCrunch_Console_3.23.0.10.msi", url.ToString());
        }

        [Fact]
        public void GetUrlTest2021()
        {
            var downloadSite =
                "<div id=\"bodyContent\">\n    <article class=\"contentBox\">\n\t  " +
                "  <p>Your download should be starting automatically.  If for some reason it doesn't, " +
                "<a href=\"http://downloads.ncrunch.net/NCrunch_VS2019_4.7.0.5.msi\">try this link instead</a>.</p>\n\t " +
                "   <iframe id=\"downloadFrame\" src=\"https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_4.7.0.5.msi\"></iframe>\n\t " +
                "   \n\t  " +
                "  <p>If this is your first time using NCrunch, make sure you read the <a href=\"/documentation/guides_quick-start-guide\">Quick Start Guide</a>. " +
                "This can save you time and will help you get familiar with NCrunch's features much faster.</p>\n\t  " +
                "  <p>Interested in keeping up to date with NCrunch? Follow <a href=\"http://www.twitter.com/remcomulder\">Remco Mulder</a>, " +
                "the lead NCrunch developer, on Twitter.</p>\n\t    \n    </article>\n</div>";

            var url = Program.GetDownloadLink(downloadSite, "VS2019");
            Assert.Equal("http://downloads.ncrunch.net/NCrunch_VS2019_4.7.0.5.msi", url.ToString());


        }

        [Fact]
        public void GetUrlTest2012()
        {
            var downloadSite = "       <p>Your download should be starting automatically.  If for some reason it doesn't, <a href=\"http://downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi\">try this link instead</a>.</p>" +
        "<iframe id=\"downloadFrame\" src=\"https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi\"></iframe>";

            var url = Program.GetDownloadLink(downloadSite, "VS2012");
            Assert.Equal("http://downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi", url.ToString());
        }

        [Fact]
        public void Test_GetVersionFromOldHomepage()
        {
            var homepage = @"latest version 3.23 (10 Jan 2019)";

            var version = Program.GetLatestVersion(homepage);

            Assert.Equal("3.23", version);
        }

        [Fact]
        public void Test_GetVersionFromCurrentHomepage()
        {
            var homepage = @"
<section id=""OverviewPane"">
	<span id=""OverviewPrefix"">NCrunch Visual Studio Extension</span>
	<h1 id=""OverviewMain"">The Ultimate Live Testing Tool for .NET</h1>
	<p id=""OverviewSubtext"">See real-time test results and metrics inline, as you code.</p>
	<a href=""/download"">
	    <div id=""DownloadButton"" class=""roundedBoxMajor"">
            <span id=""DownloadText"">Download</span>
    		<span id=""DownloadVersionText"">v4.7 Released 15 Feb 2021</span>
	    </div>
	</a>
</section>";

            var version = Program.GetLatestVersion(homepage);

            Assert.Equal("4.7", version);
        }
    }
}