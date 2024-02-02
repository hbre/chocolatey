$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='http://downloads.ncrunch.net/NCrunch_VS2022_4.19.0.14.msi'
$checksum32='8D36A120AE897713533EDA221C1363AC8A5D522D8D4F2FFECBB266B1072A549C'
 
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
