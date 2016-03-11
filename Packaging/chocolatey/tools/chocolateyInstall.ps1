$name = 'ConsoleZ'
$url = 'https://github.com/cbucher/console/releases/download/1.16.1/ConsoleZ.x86.1.16.1.16068.zip'
$url64 = 'https://github.com/cbucher/console/releases/download/1.16.1/ConsoleZ.x64.1.16.1.16068.zip'
$tools = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage $name $url $tools $url64