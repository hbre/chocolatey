$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_5.7.0.3.msi'
$checksum32='A9E3845E93050A124E1A7EEFD1E8B0D6A58E02DA556634E6301307A5DFC94B51'
 
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
