$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2017_5.14.0.5.msi'
$checksum32='86E6C13550E245411C7C807227703DB87AA0510318CA910D6F50214F25D2A4E9'
 
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
