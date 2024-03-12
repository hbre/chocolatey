$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2017_5.3.0.2.msi'
$checksum32='536C5B32FBFECD027BED0222BFFCFB219C8D7EA4A5637106C29A40022A8AE764'
 
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
