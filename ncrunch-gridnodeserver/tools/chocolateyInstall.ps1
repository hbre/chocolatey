$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='http://downloads.ncrunch.net/NCrunch_GridNodeServer_3.30.0.1.msi'
$checksum32='48D54702CAE1E91CE13953D2BD01AA0E50063ACD1A2E1E8077BC16FBC8F9B22A'
 
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
