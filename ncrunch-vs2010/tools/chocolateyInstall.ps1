$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2010_3.23.0.10.msi'
$checksum32='6A0929AB6B8C8632B58B16A55C4F557E6319038FFE276CA87ECFA86464DF70AB'
 
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
