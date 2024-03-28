$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2015_5.4.0.3.msi'
$checksum32='782A0B0D81CB9A68B12A1DA9946057462ADB727D58D60DC381DE85B0E0EAD7BC'
 
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
