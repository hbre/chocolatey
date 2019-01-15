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
            Assert.Equal("https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_3.23.0.10.msi", url.ToString());
        }

        [Fact]
        public void GetUrlTest2012()
        {
            var downloadSite = "       <p>Your download should be starting automatically.  If for some reason it doesn't, <a href=\"http://downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi\">try this link instead</a>.</p>" +
        "<iframe id=\"downloadFrame\" src=\"https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi\"></iframe>";

            var url = Program.GetDownloadLink(downloadSite, "VS2012");
            Assert.Equal("https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi", url.ToString());
        }

        [Fact]
        public void Test1()
        {
            var homepage = @"latest version 3.23 (10 Jan 2019)";

            var version = Program.GetLatestVersion(homepage);

            Assert.Equal("3.23", version);
        }
    }
}