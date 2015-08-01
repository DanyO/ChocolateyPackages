$packageName = 'soapui' # arbitrary name for the package, used in messages
$fileType = 'exe'
$url = 'http://downloads.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-x32-5.2.0.exe?r=&ts=1438411788&use_mirror=iweb'	
$url64bit =	'http://downloads.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-x64-5.2.0.exe?r=&ts=1438410362&use_mirror=iweb'	

#Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit
Install-ChocolateyPackage $packageName $fileType '-q' $url $url64bit