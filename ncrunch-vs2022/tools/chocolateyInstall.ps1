$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.2.0.3.msi'
$checksum32='2BDBF020C65074EBC0F6042156D98A7EF86CD06A9B0463D908C92229FA53AA70'
 
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
