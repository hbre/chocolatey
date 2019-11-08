$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2019'
$url32='http://downloads.ncrunch.net/NCrunch_VS2019_4.1.0.1.msi'
$checksum32='CC57DDAD33AB6EEDA93C99F091F61B760A45DB3A815C85E70CABC935F8ACCB3F'
 
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
