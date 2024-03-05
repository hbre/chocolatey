$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='http://downloads.ncrunch.net/NCrunch_GridNodeServer_5.1.0.2.msi'
$checksum32='79004AAC954199624C1E89E1D301A2CE77607F1969CD5771A1F132403D3B8F6C'
 
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
