#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'gnatsd'
$url = 'https://github.com/nats-io/gnatsd/releases/download/v0.8.0/gnatsd-v0.8.0-windows-386.zip'
$checksum = '9579a42cf2b6ab11bcc8f52ccb7bb619a4628f74'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/gnatsd/releases/download/v0.8.0/gnatsd-v0.8.0-windows-amd64.zip'
$checksum64 = '61ce9a21115c40e12b6d011fb5fe57ebd942c43a'
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

