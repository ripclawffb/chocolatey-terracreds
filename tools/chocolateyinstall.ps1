$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tonedefdev/terracreds/releases/download/v2.1.6/terracreds_2.1.6_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '22ece99060686ee2aeb7cac72de1a983341dd8aed87dbbc261718b23b1f64725'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
