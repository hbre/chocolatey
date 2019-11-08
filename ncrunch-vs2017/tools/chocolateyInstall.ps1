$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='http://downloads.ncrunch.net/NCrunch_VS2017_4.1.0.1.msi'
$checksum32='6CA9551FFF00C64A705CF210311FF619B329B602127E8E6EE2A1B729F69D30C7'
 
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
