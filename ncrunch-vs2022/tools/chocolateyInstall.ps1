$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='http://downloads.ncrunch.net/NCrunch_VS2022_5.0.0.2.msi'
$checksum32='A71830D54C0FB388662A183091996663A3572227D6ED247DD5CBB235A41C26CF'
 
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
