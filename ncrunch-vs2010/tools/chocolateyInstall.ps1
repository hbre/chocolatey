$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='http://downloads.ncrunch.net/NCrunch_VS2010_4.0.0.2.msi'
$checksum32='9314260B74D70F2F96CAEA401A9500649789983F99DDFA24F2EE8748ECFC8DC9'
 
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
