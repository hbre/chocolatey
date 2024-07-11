$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_5.9.0.1.msi'
$checksum32='4E798FDE5B4C0D705FFD48E4D7C714FEC9325ABEF2A4A61C1A685BF3D82FC1AD'
 
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
