$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2026'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2026_5.18.0.2.msi'
$checksum32='F1133BE2D64FFD68E988BC3FD9F4A4AF4AFB280704BD961A83E8B5E77C7BDF1F'
 
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
