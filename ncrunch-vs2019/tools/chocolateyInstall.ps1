$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_5.4.0.3.msi'
$checksum32='1722200236D10A77C3C5A47DAA1BAE7283375B378BE93F09E4A6E38A12CA88DB'
 
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
