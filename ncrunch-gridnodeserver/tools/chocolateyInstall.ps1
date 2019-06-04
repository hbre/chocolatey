$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='http://downloads.ncrunch.net/NCrunch_GridNodeServer_3.28.0.6.msi'
$checksum32='82A1768C4F6D37561BD0EFD728A47B301329227AA536EAAECD27303BE4A02DA3'
 
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
