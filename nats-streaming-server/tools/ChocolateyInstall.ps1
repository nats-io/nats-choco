#  Copyright 2019 The NATS Authors. All rights reserved.

$packageName = 'nats-streaming-server'
$url = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.15.1/nats-streaming-server-v0.15.1-windows-386.zip'
$checksum = 'AB66AF731A27065558FE332F5D1CC1E25D3CBA32832131697556A56F51EA6D83'
$checksumType = 'sha256'
$url64 = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.15.1/nats-streaming-server-v0.15.1-windows-amd64.zip'
$checksum64 = '32E8E5455354D59DAA13D359A529B23729D0C49680C2F1267FEEC9C4E16F9C83'
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

