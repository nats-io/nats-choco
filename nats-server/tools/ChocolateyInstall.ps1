#  Copyright 2019, The NATS Authors. All rights reserved.

$packageName = 'nats-server'
$url = 'https://github.com/nats-io/nats-server/releases/download/v2.0.0/nats-server-v2.0.0-windows-386.zip'
$checksum = 'AE02BA59FB5E1B6CC976A0E24C2D51E5924BE7AB'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/nats-server/releases/download/v2.0.0/nats-server-v2.0.0-windows-amd64.zip'
$checksum64 = '8889279FD8CED6B488FB4F7879AEAEC402A1F639'
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

