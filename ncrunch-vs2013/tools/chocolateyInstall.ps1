$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2013'
$url32='https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_VS2013_5.13.0.4.msi'
$checksum32='E16978AC686916212B65AB5F43E819E45DFA861B17B84C9AE41ABD03AEC04DB2'
 
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
