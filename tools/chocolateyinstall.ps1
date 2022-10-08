$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tonedefdev/terracreds/releases/download/v2.1.2/terracreds_2.1.2_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = 'fbba036b27c484e3b23d16a5804fc1e8ac6fe3a2664effa86ca6e335096bddd4'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
