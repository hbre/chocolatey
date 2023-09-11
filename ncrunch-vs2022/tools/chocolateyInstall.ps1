$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2022'
$url32='https://www.ncrunch.net/download/getMsi?version=4.18&vs=2022'
$checksum32='9CE7F125BB8E33CCB6A7BE597D55D385BA2BB4FA90E9FA4113C0DC24CEC23A5D'
 
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
