#  Copyright 2016 Apcera Inc. All rights reserved.

$packageName = 'gnatsd'
$url = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.6/gnatsd-v0.9.6-windows-386.zip'
$checksum = '37C8F676B246CCA1694008E685D0DCA325827A69'
$checksumType = 'sha1'
$url64 = 'https://github.com/nats-io/gnatsd/releases/download/v0.9.6/gnatsd-v0.9.6-windows-amd64.zip'
$checksum64 = '07CEC0C6737621D2152EC31C4327383C87FE99E6'
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

