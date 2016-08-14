$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.17.0/ConsoleZ.x86.1.17.0.16129.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.17.0/ConsoleZ.x64.1.17.0.16129.zip'
$checksum       = '2827277C4648F0B44587DB5DD550840DCCA8822AF1ABDA3BCD8C95112A0BC816'
$checksumType   = 'sha256'
$checksum64     = 'FB7B149A74BF1C397B2AB76EEF8D39021931A0F70175214495591E8AAAB6C313'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64