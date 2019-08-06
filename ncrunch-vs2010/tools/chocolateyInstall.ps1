$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='http://downloads.ncrunch.net/NCrunch_VS2010_3.29.0.7.msi'
$checksum32='7ADEA791C6B4BCD3B63F7F77019422A4B00BA117F7B01416B77FDDF1970ECDF5'
 
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
