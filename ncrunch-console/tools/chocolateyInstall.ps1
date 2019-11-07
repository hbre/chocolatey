$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='http://downloads.ncrunch.net/NCrunch_Console_4.0.0.2.msi'
$checksum32='0F464A7A0432BC79A7718AEB937C2E5951ECE102FAA12147C88021B25BD6C77F'
 
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
