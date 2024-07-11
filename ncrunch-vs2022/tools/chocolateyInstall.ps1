$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2022_5.9.0.1.msi'
$checksum32='F733514BF228F932017A592A9D48D612B74262C18242D7FFC87CDF6897391435'
 
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
