$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2017_3.23.0.10.msi'
$checksum32='A2A7D99A175E48E4FFB601DE55397D7B30D5F211CD0B5AD9875B37802F710D87'
 
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
