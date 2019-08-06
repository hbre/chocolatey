$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='http://downloads.ncrunch.net/NCrunch_VS2019_3.29.0.7.msi'
$checksum32='0BD867F4802E6D1D9B80604D69DCD3C76F7CC8719433ADDD48C435F8AA7CEA37'
 
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
