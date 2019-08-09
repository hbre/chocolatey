$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='http://downloads.ncrunch.net/NCrunch_VS2019_3.30.0.1.msi'
$checksum32='512A99505E1FCAC64FF43B0FB99E5E940EA616D1CE30B074252308E6DB8F9D6D'
 
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
