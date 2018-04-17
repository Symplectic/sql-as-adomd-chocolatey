
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/6/7/8/67858AF1-B1B3-48B1-87C4-4483503E71DC/ENU/x86/SQL_AS_ADOMD.msi'
$url64      = 'https://download.microsoft.com/download/6/7/8/67858AF1-B1B3-48B1-87C4-4483503E71DC/ENU/x64/SQL_AS_ADOMD.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'sql-as-adomd*'

  checksum      = '5AECEF95D459035213EC3279C8D469DE23DC5B1F327BD209C99C9B31D9BACE4F'
  checksumType  = 'sha256'
  checksum64    = 'B5B38F270D0DE63AEAE745DCC852953F4EF59004C3834067ED05E6FC79C40560'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








