$packageName = 's3browser' # arbitrary name for the package, used in messages
$fileType = 'exe'
$url = 'http://s3browser.com/download/s3browser-4-4-5.exe'
try
{
	#Install-ChocolateyPackage $packageName $fileType $silentArgs $url
    Install-ChocolateyPackage $packageName $fileType '/silent' $url

    Write-ChocolateySuccess $packageName
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}