$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.18.1/ConsoleZ.x86.1.18.1.17087.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.18.1/ConsoleZ.x64.1.18.1.17087.zip'
$checksum       = 'B1CFEEBC8426F144AB9D1E050AA250309F89C0E3499DA6370AD1895655015DC3'
$checksumType   = 'sha256'
$checksum64     = 'EDE84C65472F0D1405C721F5898780B1D54E7B98CE8A73CC7D20CD1AA16C31F3'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64