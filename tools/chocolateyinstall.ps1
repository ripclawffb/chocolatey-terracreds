$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/tonedefdev/terracreds/releases/download/v1.0.2/terracreds_1.0.2_windows_amd64.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url

  checksum      = '09c3eccf688d808e25ada3e21f3349473b93d7bc35e961c1657ac7ac9fb50327'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyPath $toolsDir -PathType 'Machine'
