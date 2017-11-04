$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.18.2/ConsoleZ.x86.1.18.2.17272.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.18.2/ConsoleZ.x64.1.18.2.17272.zip'
$checksum       = '6FE3F3DAB3E0F1110B9633E63FEDD7ED13A1DA028A8B7E2DF233125C91F5CAD4'
$checksumType   = 'sha256'
$checksum64     = '50D612C3DEA96F07562F25D1C4A69D7BB988B550B7627F31C48BD89DCB106545'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64