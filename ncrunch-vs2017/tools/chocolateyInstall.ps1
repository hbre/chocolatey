$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='http://downloads.ncrunch.net/NCrunch_VS2017_3.28.0.6.msi'
$checksum32='F7BB8CC384BF210EA32C969E10A27268E6517FBEBE68DF9E2CC059621CEA59D5'
 
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
