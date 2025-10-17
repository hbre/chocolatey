$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.18.0.2.msi'
$checksum32='9E45151FF5EE6B257F56EB57F3A0ABC8D21F9C50EB0A287C25852023129C7793'
 
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
