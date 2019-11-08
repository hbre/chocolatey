$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='http://downloads.ncrunch.net/NCrunch_Console_4.1.0.1.msi'
$checksum32='83DE9987949DE99F0A40169871EDF822EFC449B8728D17CCE1321C78A2F2C196'
 
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
