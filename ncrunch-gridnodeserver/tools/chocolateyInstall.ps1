$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_5.6.0.1.msi'
$checksum32='0B958AA814EEFE643F6CE89248C7E8722776B4E98B2657DA9A99D935D07FFF20'
 
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
