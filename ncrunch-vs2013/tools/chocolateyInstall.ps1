$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='http://downloads.ncrunch.net/NCrunch_VS2013_3.29.0.7.msi'
$checksum32='8BDB458F0E52F0480ECEFF9E6860F780BC5A22AE7DD3CE859C7E52DF3CB44584'
 
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
