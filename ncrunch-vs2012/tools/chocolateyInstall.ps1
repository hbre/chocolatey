$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_5.9.0.1.msi'
$checksum32='851B6F70E21FBB8CBB2D97F05F2CF6F0FDF1F4968E26597FA50CC2FA1F5F3F25'
 
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
