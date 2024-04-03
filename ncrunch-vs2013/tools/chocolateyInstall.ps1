$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2013_5.5.0.1.msi'
$checksum32='32C9FAF8A3F759DD0D5D796645A1D7EF1D1F6BBAC83D23698B9E84C0059106AB'
 
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
