$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='http://downloads.ncrunch.net/NCrunch_VS2017_3.29.0.7.msi'
$checksum32='F89F783089D0FB1FB57F0143EC6652FD742E1D1E045B274C85EC1882E37FE452'
 
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
