$ErrorActionPreference = 'Stop'

$packageName='ncrunch-gridnodeserver'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_5.8.0.2.msi'
$checksum32='1FC6E4543518BBCE786AA670CDB38517D33D55ED882E1C951214B4D7CBC63DD6'
 
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
