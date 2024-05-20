$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_5.7.0.3.msi'
$checksum32='5B5988B9B9135E1D7334C25DE10D23C5293FCA39400F8824A4267066F62BFF74'
 
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
