$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.kde.org/stable/digikam/6.2.0/digiKam-6.2.0-Win32.exe'
$checksum = 'b8ba67978125316f64b0d94081e24465fd3e86f467c6ec25f6512c33b3388939'
$checksumType = 'sha256'
$url64 = 'https://download.kde.org/stable/digikam/6.2.0/digiKam-6.2.0-Win64.exe'
$checksum64 = 'd8a194b62abb55baf9ca6a61aca6290bcecdf4cb9915208848c00843852c0c82'
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
