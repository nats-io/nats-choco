#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'gnatsd'
$url = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.2/gnatsd-v0.9.2-windows-386.zip'
$checksum = 'E8F3BEA4316B366FD908FFDF2D5D7AE36C4E84E1'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.2/gnatsd-v0.9.2-windows-amd64.zip'
$checksum64 = 'A6FDED934FD68BA451E6279E1FED4E10D4472946'
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

