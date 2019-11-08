$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='http://downloads.ncrunch.net/NCrunch_VS2010_4.1.0.1.msi'
$checksum32='019731AAA2CF7992D1E1C42C4052ABC7F13CA10080BD7A45B154C49C16C80CD1'
 
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
