$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='http://downloads.ncrunch.net/NCrunch_VS2010_3.28.0.6.msi'
$checksum32='EE41BA24294F9AD8C92FB969AE9B445315B1CA1E80D41B959ACDFD159EA577CB'
 
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
