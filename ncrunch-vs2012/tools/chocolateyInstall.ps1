$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='http://downloads.ncrunch.net/NCrunch_VS2012_3.29.0.7.msi'
$checksum32='B1297E040DB0EA95EE1380E60ED1682BCFB9920E385F6812A7263941A3C55FFC'
 
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
