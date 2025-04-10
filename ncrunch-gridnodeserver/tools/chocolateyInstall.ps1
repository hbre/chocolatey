$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_5.13.0.4.msi'
$checksum32='307AA9CDDECE198550970EB0AAF4760DA89EC865953E8EC6D518C770FC538DF5'
 
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
