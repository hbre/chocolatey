$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='http://downloads.ncrunch.net/NCrunch_VS2019_5.0.0.2.msi'
$checksum32='38430EFA2147AE7A319D10ACC81A5AB75467B898EF5BE1CF59D109E6D1CC28DC'
 
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
