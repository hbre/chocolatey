$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_3.23.0.10.msi'
$checksum32='07F9B9A394B8DBA4074D1BEDE290E2646E91F081601D1C6C72CFAC2AA297F24D'
 
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
