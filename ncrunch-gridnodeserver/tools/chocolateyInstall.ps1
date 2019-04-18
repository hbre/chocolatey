$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_3.26.0.4.msi'
$checksum32='74B2DEA8D159961EF22C45E377C1501477C85BAADB782AB81D1A3754930C9342'
 
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
