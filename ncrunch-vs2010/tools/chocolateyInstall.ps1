$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='http://downloads.ncrunch.net/NCrunch_VS2010_3.30.0.1.msi'
$checksum32='AE17259CAB27F6630339EBF8AC2CBB2936445C615CD8FF52FDEE8049AD592C41'
 
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
