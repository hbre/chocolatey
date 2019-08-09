$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='http://downloads.ncrunch.net/NCrunch_VS2008_3.30.0.1.msi'
$checksum32='CD2A7BF99F2173CDDD055901DBAA01933AF6332CFA612CF37C590B5D031A483E'
 
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
