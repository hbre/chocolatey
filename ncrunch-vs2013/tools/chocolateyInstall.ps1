$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2013_5.1.0.2.msi'
$checksum32='1A4D9C6037A45A1F44901E4CD59AA01EF2C3DDF66D403BD10B0695B478F6637B'
 
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
