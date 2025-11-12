$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_5.20.0.2.msi'
$checksum32='BBF74B3368113522CC60E53EBC64373C386BE4BA731C7959461ECF5607164FB9'
 
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
