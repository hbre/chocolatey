$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='http://downloads.ncrunch.net/NCrunch_VS2022_5.1.0.2.msi'
$checksum32='62BA2FA49B9CE1B651E7A89E5D35B302834DFFDBC73C40DEA8B57AF2A7A4A0A9'
 
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
