$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_5.6.0.1.msi'
$checksum32='62138E317F02BDA56D11CEE13FA0B0B4582A8AF4B04D125D7025736E5955AD64'
 
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
