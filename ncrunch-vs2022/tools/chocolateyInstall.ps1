$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.13.0.4.msi'
$checksum32='FD84010722CEC14A02B31AAFA4622426BAADE43D8468DEC0D562DF7738A5D786'
 
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
