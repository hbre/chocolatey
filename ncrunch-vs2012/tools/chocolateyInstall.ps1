$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='http://downloads.ncrunch.net/NCrunch_VS2012_4.1.0.1.msi'
$checksum32='57BC583083485453995E3E705F8735691BA938FE647321EA26FF9551A8DB24A1'
 
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
