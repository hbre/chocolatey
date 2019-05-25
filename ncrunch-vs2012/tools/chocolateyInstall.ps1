$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='http://downloads.ncrunch.net/NCrunch_VS2012_3.28.0.6.msi'
$checksum32='0C45F9E44C7399A48D38C448675D63A58AA60492B74541023090B869E8B76DAE'
 
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
