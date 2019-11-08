$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='http://downloads.ncrunch.net/NCrunch_VS2015_4.1.0.1.msi'
$checksum32='D4F218E7F37601E425472BFDD0F8DB3E3523D25205133E8D43BDD6D92CAC81A8'
 
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
