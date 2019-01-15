$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2013_3.23.0.10.msi'
$checksum32='C7FE1B3A857199157F6F725BA4C01EED94F970E53328F01475BD05234372C148'
 
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
