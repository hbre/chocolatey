$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2008_3.26.0.4.msi'
$checksum32='531A3013F3C144E56C657DF2360E7617CFBB34D03CF8358C2B49FF0ED3522B8E'
 
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
