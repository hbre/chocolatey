$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2015'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2015_5.6.0.1.msi'
$checksum32='DCBFFFD1585D8AFEA3A9A8AB079AEC2A305B14B2FBA16A78B5F05E2623A33419'
 
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
