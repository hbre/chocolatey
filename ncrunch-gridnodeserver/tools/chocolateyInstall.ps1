$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='http://downloads.ncrunch.net/NCrunch_GridNodeServer_3.29.0.7.msi'
$checksum32='25F83D83F46B7D82D324B92581D6C9B13571F20ED91F820AA8B79CB3A46E2C23'
 
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
