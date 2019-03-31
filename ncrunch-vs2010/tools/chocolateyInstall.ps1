$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2010_3.25.0.3.msi'
$checksum32='F9836BF8553BB9F893CAE5C6F4A1D00E2157C337A4434D19E8855ABF46A5965E'
 
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
