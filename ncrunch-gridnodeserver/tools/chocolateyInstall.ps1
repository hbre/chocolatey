$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='http://downloads.ncrunch.net/NCrunch_GridNodeServer_4.1.0.1.msi'
$checksum32='26754ADAB6AA4EBD59C5E6254C416FF7101BB76F2675B5A98D5B9A1EC9B4BE0E'
 
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
