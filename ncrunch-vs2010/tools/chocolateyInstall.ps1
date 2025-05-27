$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2010_5.15.0.4.msi'
$checksum32='CF94D235D3E680E80CC163E566EFF0AD3FA1BF77A7E0C6FE96E75B4CC8F30FC5'
 
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
