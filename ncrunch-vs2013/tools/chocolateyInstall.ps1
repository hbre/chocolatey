$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='http://downloads.ncrunch.net/NCrunch_VS2013_4.1.0.1.msi'
$checksum32='9B9FEAC1199165F5F803561037BE6A466E53BA8B8B94E9E6D29E7A3FECD22346'
 
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
