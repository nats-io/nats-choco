#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'nats-streaming-server'
$url = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.3.8/nats-streaming-server-v0.3.8-windows-386.zip'
$checksum = '4AF1166D8AA600AEE289BFA7DFE01C6DB601F7CBA6F3AA6A88366C20EDF35E7A'
$checksumType = 'sha256'
$url64 = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.3.8/nats-streaming-server-v0.3.8-windows-amd64.zip'
$checksum64 = '0E9D32BA0013E397A313774DC261ED8D20FA93ABF1DA96EE8BE2896339FE1299'
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

