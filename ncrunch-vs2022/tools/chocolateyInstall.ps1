$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='http://downloads.ncrunch.net/NCrunch_VS2022_4.10.0.6.msi'
$checksum32='4AB7C0F95B830A019F1B968B62FA855540ADA77005BD2BC5F7CCDBD37CEB51B6'
 
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
