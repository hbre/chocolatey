$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='http://downloads.ncrunch.net/NCrunch_VS2022_4.8.0.3.msi'
$checksum32='9E5304CDEC7E162B0FD06AC465B8ED2619F5A5C88E75AD0F1CC58245F91EC7CB'
 
$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = $packageName
  fileType               = 'MSI'
  url                    = $url32
  checksum               = $checksum32
  checksumType           = 'sha256'
  validExitCodes         = @(0)  
  silentArgs             = '/quiet'
}

Install-ChocolateyPackage @packageArgs
