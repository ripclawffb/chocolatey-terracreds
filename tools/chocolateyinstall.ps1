$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tonedefdev/terracreds/releases/download/v2.1.4/terracreds_2.1.4_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '0d7d22996fbedc801312d9fb74f2cf1abe2d5f091b8c477dde8b03279315fb38'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
