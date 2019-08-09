$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='http://downloads.ncrunch.net/NCrunch_VS2017_3.30.0.1.msi'
$checksum32='8C41BAA9F6E5B185013C2F9F6369BA1C63E9A0248A403915D107C303481FDA62'
 
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
