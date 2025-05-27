$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_5.15.0.4.msi'
$checksum32='8930E2A94000F1C861FE9EB73708CF349CDD21ADB89A278BBF15E04ED482E7AE'
 
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
