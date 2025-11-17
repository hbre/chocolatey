$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2026'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2026_5.20.0.2.msi'
$checksum32='F9B8B6C320BA52050F326E331FC49F067ADD6097CC0C2BCB32E5519C4923B70F'
 
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
