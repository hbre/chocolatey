$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_5.20.0.2.msi'
$checksum32='08ABAF9EFA5C881597BD764C03FD45D2D1535511148CF85EEF4FB3549C3E970C'
 
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
