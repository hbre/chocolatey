$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='http://downloads.ncrunch.net/NCrunch_VS2008_3.28.0.6.msi'
$checksum32='2BCFF18B56A319F04AC45885EED7961C2B188F44F494BA677A8A8F6F2D0521EF'
 
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
