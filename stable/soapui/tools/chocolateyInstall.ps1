$packageName = 'soapui' # arbitrary name for the package, used in messages
$fileType = 'exe'
$url = 'http://downloads.sourceforge.net/project/soapui/soapui/5.0.0/SoapUI-x32-5.0.0.exe?r=&ts=1403616764&use_mirror=iweb'
try
{
	#Install-ChocolateyPackage $packageName $fileType $silentArgs $url
    Install-ChocolateyPackage $packageName $fileType '-q' $url

    Write-ChocolateySuccess $packageName
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}