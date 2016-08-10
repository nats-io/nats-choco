#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'nats-streaming-server'
$url = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.2.2/nats-streaming-server-windows-386.zip'
$checksum = 'CE9EAEE70A2B81EC70382CDF34BD93FEC8CA4792AA56BD9BAA0015A069791B9C'
$checksumType = 'sha256'
$url64 = 'https://github.com/nats-io/nats-streaming-server/releases/download/v0.2.2/nats-streaming-server-windows-amd64.zip'
$checksum64 = 'FD0E1EEAC8B3A51189212EEA48F78E17C98B9679B1F39A02877C020961B6D351'
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

