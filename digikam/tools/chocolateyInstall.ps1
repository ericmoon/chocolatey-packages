$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org//unstable/digikam/digiKam-7.0.0-beta2-Win32.exe'
$checksum = 'c40bb68f5ad375be5760176e106128233ae6190c192df6a4cf6d17e23b2a6757'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/unstable/digikam/digiKam-7.0.0-beta2-Win64.exe'
$checksum64 = '5397e9dbe8335f31c384194b8e22776020e62f862f704a465b650500b833f272'
$checksumType64 = 'sha256'
$validExitCodes = @(0)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"

