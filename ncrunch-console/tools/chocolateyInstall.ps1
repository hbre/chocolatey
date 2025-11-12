$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_Console_5.20.0.2.msi'
$checksum32='652F1FCF7A9DDAEFA2141652066702DBA9FFAF9354F4D4CD1772DC3AF7DA2A08'
 
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
