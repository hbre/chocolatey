$ErrorActionPreference = 'Stop'

$packageName = 'ncrunch-vs2022'
$url32 = 'https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.16.0.5.msi'
$checksum32 = 'E6C48EC9F67D944503D795D592C17EEDCB73E31ECDDFCFA4C8A919E3DBED6E5A'
 
$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName    = $packageName
  fileType       = 'MSI'
  url            = $url32
  checksum       = $checksum32
  checksumType   = 'sha256'
  validExitCodes = @(0)  
  silentArgs     = '/quiet'
}

Install-ChocolateyPackage @packageArgs
