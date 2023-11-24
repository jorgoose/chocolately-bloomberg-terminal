$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://bdn-ak-ssl.bloomberg.com/software/trv/sotr130_7_80.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = $url
  softwareName   = 'bloomberg-terminal*'
  silentArgs     = "/s maindir=`"$env:SystemDrive\Program Files\bloomberg`""
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
