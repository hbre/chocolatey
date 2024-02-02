$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='http://downloads.ncrunch.net/NCrunch_VS2019_4.19.0.14.msi'
$checksum32='6DE8FB364FC4B571282A8CAB2D8A0755EC71B6CF39704B8143AF1C8BDD8EAB98'
 
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
