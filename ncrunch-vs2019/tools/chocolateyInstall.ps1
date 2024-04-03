$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_5.5.0.1.msi'
$checksum32='FA5BFE1CB7C747DB0EDC0931A63210CC389F7E78B5D2994A97FB327588562A67'
 
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
