$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2015_5.12.0.10.msi'
$checksum32='42FE4918BD5E747F5F539934A7B5BB587A05AF965466D78111196063339BCB03'
 
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
