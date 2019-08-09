$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='http://downloads.ncrunch.net/NCrunch_Console_3.30.0.1.msi'
$checksum32='67EAAD74446CFE952B17D95103850A63D9E1CF56F3C803136075C5372E79AFC4'
 
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
