$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='http://downloads.ncrunch.net/NCrunch_VS2017_4.19.0.14.msi'
$checksum32='94A033EE81B668A8668E704622CF82CE7F6AC42AA9EE7D7B54D1037325AD1E16'
 
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
