$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='http://downloads.ncrunch.net/NCrunch_VS2015_3.30.0.1.msi'
$checksum32='ED7FCAC6B0A599BDF629155E837919B76949697AA2E152DE6A1A8154CD812C56'
 
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
