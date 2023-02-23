$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tonedefdev/terracreds/releases/download/v2.1.3/terracreds_2.1.3_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '9b236b59500f1fac3d50e24ade54bd256da8dabadb9ead8d20fa09340e1944db'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
