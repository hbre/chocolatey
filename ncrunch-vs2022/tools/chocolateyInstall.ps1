$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.5.0.1.msi'
$checksum32='3B4ED05CD3658F3DF619E966BB9C0D555F15698BD94FC6243E1F433C34128B39'
 
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
