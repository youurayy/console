$packageName    = 'ConsoleZ'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://github.com/cbucher/console/releases/download/1.18.3/ConsoleZ.x86.1.18.3.18143.zip'
$url64          = 'https://github.com/cbucher/console/releases/download/1.18.3/ConsoleZ.x64.1.18.3.18143.zip'
$checksum       = 'B5265A07FC79C1BCE4FC89EDCB3685CCE4C0A8CCE55163B55C15EBD0C6DD5383'
$checksumType   = 'sha256'
$checksum64     = '178E5C1A8CB06768E193E80785B82E343BB7379D94C33105B81550120367936A'
$checksumType64 = 'sha256'


Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64