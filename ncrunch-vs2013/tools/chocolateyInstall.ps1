$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='http://downloads.ncrunch.net/NCrunch_VS2013_4.19.0.14.msi'
$checksum32='04E7432075D506476D7C1772C45E38B3E5DC8822C7BE63399E579A343B65B9BA'
 
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
