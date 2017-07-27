#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'gnatsd'
$url = 'https://github.com/nats-io/gnatsd/releases/download/v1.0.2/gnatsd-v1.0.2-windows-386.zip'
$checksum = '63E849E74614AC2C44912ACD7CA0B5A2F100B01A'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/gnatsd/releases/download/v1.0.2/gnatsd-v1.0.2-windows-amd64.zip'
$checksum64 = 'F03BC03676240E3F5F44387DA0FB50E7FAB05FBC'
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

