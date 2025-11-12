$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2017'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2017_5.20.0.2.msi'
$checksum32='F3B54AF2AB73A9A75DBC55982A83FD113DC4975EE80083476E7E145CC3BCAACF'
 
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
