$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='http://downloads.ncrunch.net/NCrunch_VS2012_4.0.0.2.msi'
$checksum32='4F40CFDEB6A1EAAA62A68CC2F23567118263405EB96610D086F0CB6E64B5BE07'
 
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
