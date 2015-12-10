$packageName = 'soapui' # arbitrary name for the package, used in messages
$fileType = 'exe'
$url = 'http://cdn01.downloads.smartbear.com/soapui/5.2.1/SoapUI-x32-5.2.1.exe'
$url64 = 'http://cdn01.downloads.smartbear.com/soapui/5.2.1/SoapUI-x64-5.2.1.exe'

#Install-ChocolateyPackage $packageName $fileType $silentArgs $url
Install-ChocolateyPackage $packageName $fileType '-q' $url $url64
