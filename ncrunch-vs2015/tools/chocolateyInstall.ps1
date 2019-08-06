$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='http://downloads.ncrunch.net/NCrunch_VS2015_3.29.0.7.msi'
$checksum32='6C3B77EAD2310D3601E36FAA4005F8020AE9F71F2489A748A2E271BBF3CA6B3E'
 
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
