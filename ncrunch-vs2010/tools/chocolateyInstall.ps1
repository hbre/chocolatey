$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2010_5.4.0.3.msi'
$checksum32='695CECBE9F1FCFFF96096BE1A6620B2DBEDC3E0F65A02636E10F6E1FEDCE21A9'
 
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
