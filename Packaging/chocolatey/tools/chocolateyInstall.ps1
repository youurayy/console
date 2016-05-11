$name  = 'ConsoleZ'
$url   = 'https://github.com/cbucher/console/releases/download/1.17.0/ConsoleZ.x86.1.17.0.16129.zip'
$url64 = 'https://github.com/cbucher/console/releases/download/1.17.0/ConsoleZ.x64.1.17.0.16129.zip'
$tools = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage $name $url $tools $url64