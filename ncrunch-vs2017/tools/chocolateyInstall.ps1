$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2017_5.10.0.7.msi'
$checksum32='E5C64173193417AE9B51192054F36B608F594D399660559B4EAAAE8C477576A8'
 
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
