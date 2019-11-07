$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='http://downloads.ncrunch.net/NCrunch_VS2013_4.0.0.2.msi'
$checksum32='9424D16139EFEFBB0EA84B1A23F454BA7696B0C169CDE268952C77FA4845AD9D'
 
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
