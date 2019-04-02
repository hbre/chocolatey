$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2008_3.25.0.3.msi'
$checksum32='BDEEED8D267EF95487C5D50242260E09E100DAC216B8C6EBE6B08BDFB9E1D1DF'
 
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
