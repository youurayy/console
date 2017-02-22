$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.18.0/ConsoleZ.x86.1.18.0.17048.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.18.0/ConsoleZ.x64.1.18.0.17048.zip'
$checksum       = '033DF98532123EC209F52D078579698C1B3D7DFDC24D4CA56B07D575434647A9'
$checksumType   = 'sha256'
$checksum64     = '09794188868A4B4EC5A408BA137EA3508AE6BE5EDB1C516D237E304F3361DE9D'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64