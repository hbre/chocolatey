$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='http://downloads.ncrunch.net/NCrunch_Console_3.29.0.7.msi'
$checksum32='9CBAE97726467EC85A443429DEF150504DB1D31F0443EC04860AEBEE7517719A'
 
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
