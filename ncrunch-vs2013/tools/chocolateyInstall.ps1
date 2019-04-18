$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2013_3.26.0.4.msi'
$checksum32='5F8F84A5D91A7733F6334BD122E5C7E4CFBBB74611FABB2B4EAE362EBC6F3476'
 
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
