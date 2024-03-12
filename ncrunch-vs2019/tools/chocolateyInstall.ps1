$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2019_5.3.0.2.msi'
$checksum32='C0D5497FC88E719ECC8FA73F7065EF6AF41D0E0328327F0874F78ACBA1A36626'
 
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
