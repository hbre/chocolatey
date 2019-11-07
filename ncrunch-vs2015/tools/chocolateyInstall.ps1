$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='http://downloads.ncrunch.net/NCrunch_VS2015_4.0.0.2.msi'
$checksum32='53FDF03D102D4EAFE7D94CD562BA8EFDA8A750702BC133818DB1FA15B5C8C4E9'
 
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
