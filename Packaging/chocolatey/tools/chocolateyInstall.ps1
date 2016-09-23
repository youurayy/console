$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.17.1/ConsoleZ.x86.1.17.1.16266.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.17.1/ConsoleZ.x64.1.17.1.16266.zip'
$checksum       = 'AB74291D826648DF340E01FE3FDC0A9513C19005D46738C8D3AF2D715A14A06C'
$checksumType   = 'sha256'
$checksum64     = '5AE1A7B2178CFFC0B2BEA27C1EB14594E4F19DE5A693E3B31204BB340368DAB0'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64