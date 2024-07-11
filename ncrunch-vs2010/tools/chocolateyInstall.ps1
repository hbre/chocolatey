$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2010'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2010_5.9.0.1.msi'
$checksum32='CC9EBE55C08785518EA079203286755C88EF4D8BFDA0936E152D1474338DDD3E'
 
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
