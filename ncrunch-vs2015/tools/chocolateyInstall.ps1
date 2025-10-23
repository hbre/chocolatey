$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2015_5.19.0.5.msi'
$checksum32='B2B1F343837001B10690B2D5F2C4FDD1CC4077A17BDC3BF8EF24CF5A66A0A9D0'
 
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
