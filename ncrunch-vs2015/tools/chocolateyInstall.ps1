$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='http://downloads.ncrunch.net/NCrunch_VS2015_4.10.0.6.msi'
$checksum32='6CDA6B5AF71B5D78CFC905EF044CF8550CCA00CA8164104B081250BF64FB2B0A'
 
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
