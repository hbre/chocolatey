$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2015_5.20.0.2.msi'
$checksum32='9FD070CED2115E676008C654C1B4142CB8190BD3E7D54CB9F52C2293D597AF31'
 
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
