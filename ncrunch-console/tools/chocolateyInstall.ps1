$ErrorActionPreference = 'Stop'

$packageName='ncrunch-console'
$url32='http://downloads.ncrunch.net/NCrunch_Console_4.3.0.13.msi'
$checksum32='B754E4A272333C2B1786A6A0174F858606B8B227452F3AFA8B72F9E81D07E998'
 
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
