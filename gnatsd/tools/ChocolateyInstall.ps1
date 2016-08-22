#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'gnatsd'
$url = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.4/gnatsd-v0.9.4-windows-386.zip'
$checksum = 'C3E7D0CCBDDE4A838765861DE272FF7D39AFC8DD'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.4/gnatsd-v0.9.4-windows-amd64.zip'
$checksum64 = '08BB5091B6EDCB45B128442895A7C8316BADBC27'
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

