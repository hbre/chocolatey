$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2008_3.24.0.2.msi'
$checksum32='ABC'
 
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
