$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_5.19.0.5.msi'
$checksum32='E73E9470FA6E90FEFB35E9A4D9E37B9F3E5334CC55688074A1E45E666CEE7EDF'
 
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
