$ErrorActionPreference = 'Stop'

$packageName='ncrunch-vs2008'
$url32='http://downloads.ncrunch.net/NCrunch_VS2008_3.29.0.7.msi'
$checksum32='2928443981EC298AF914974D91B38A396DC3AEA6DE94F99BDC4327D68EFEA5FB'
 
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
