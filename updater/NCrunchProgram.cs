namespace updater
{
    public class NCrunchProgram
    {
        public string Name { get; set; }

        public string ChocolateyPackageName { get; set; }
        public string MarketingName { get; set; }
        public string DownloadName { get; internal set; }

        public static NCrunchProgram CreateVsProgram(int version)
        {
            return new NCrunchProgram
            {
                ChocolateyPackageName = $"ncrunch-vs{version}",
                Name = $"{version}",
                DownloadName = $"VS{version}",
                MarketingName = $"NCrunch for Visual Studio {version}"

            };
        }
    }
}