$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2012'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2012_5.5.0.1.msi'
$checksum32='2F7686F977F994A00D4091FF5649B411E1850A62583DE3306E965C7EA5ABAF60'
 
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
