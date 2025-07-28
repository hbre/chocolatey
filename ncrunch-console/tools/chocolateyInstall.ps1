$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_5.16.0.5.msi'
$checksum32='9083EBB235BB5F5D48DECAD624F0EDF94D734A0F65E9023E9B9CBA2267D4018E'
 
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
