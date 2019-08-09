$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='http://downloads.ncrunch.net/NCrunch_VS2012_3.30.0.1.msi'
$checksum32='E8CB58FB777EAC0D83205B34DDF1206AB284F01152CE00262D9BEB3B2A078627'
 
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
