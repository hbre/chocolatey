$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='http://downloads.ncrunch.net/NCrunch_VS2013_3.30.0.1.msi'
$checksum32='F3FD83B9FA6CE37A5F9DBD087C9C40F0ECA2095E75A496218CB3543BDA1236BB'
 
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
