$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='http://downloads.ncrunch.net/NCrunch_VS2008_4.0.0.2.msi'
$checksum32='8C8DD122541BCC426EC255D47C6F816D371CA1DC6621BCC5479D79C9C77DD79A'
 
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
