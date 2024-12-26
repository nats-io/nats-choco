#  Copyright 2019, The NATS Authors. All rights reserved.

$packageName = 'nats-server'
$url = 'https://github.com/nats-io/nats-server/releases/download/v2.9.15/nats-server-v2.9.15-windows-386.zip'
$checksum = '8D2B23F33357383CF9EEB334F303DCEE78A8F31B8B26069690F4AF0E25CDB28D'
$checksumType = 'sha256'
$url64 = 'https://github.com/nats-io/nats-server/releases/download/v2.9.15/nats-server-v2.9.15-windows-amd64.zip'
$checksum64 = '090F5C310BEEB94F603898C6940F2793C292B20C131E578967FC2CDBD01BD42A'
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

