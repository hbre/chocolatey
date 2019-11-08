$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='http://downloads.ncrunch.net/NCrunch_VS2008_4.1.0.1.msi'
$checksum32='79F1BDD30354AD81012AFA5BF3C3D37D1617BC74DD472E954154A3C922F8BFDC'
 
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
