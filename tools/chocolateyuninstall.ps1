$ErrorActionPreference = 'Stop' # stop on all errors

# Replace 'C:' with the system drive
$uninstallPath = Join-Path $env:SystemDrive "\ProgramData\{D82FB535-3AF9-4AEF-877A-A310FD18F090}\sotrt.exe"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  silentArgs     = "REMOVE=TRUE /s"
  validExitCodes = @(0)
  file           = $uninstallPath
}

Uninstall-ChocolateyPackage @packageArgs
