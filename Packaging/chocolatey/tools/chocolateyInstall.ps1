$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.17.2/ConsoleZ.x86.1.17.2.16323.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.17.2/ConsoleZ.x64.1.17.2.16323.zip'
$checksum       = '76D468482AC49C00EFBD2CBAF8A9FB3F9292F6B76A345E9878B239828E3A8261'
$checksumType   = 'sha256'
$checksum64     = 'FEAA524C8A3A30D752A850E560EEC965EAE45F98A7FD61849E2FE247F8423BA4'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64