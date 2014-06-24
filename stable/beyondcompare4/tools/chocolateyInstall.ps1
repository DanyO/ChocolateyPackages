$packageName = 'beyondcompare4' # arbitrary name for the package, used in messages
$fileType = 'exe'
$url = 'http://www.scootersoftware.com/BCompare-4.0.0.18291.exe'
try
{
	#Install-ChocolateyPackage $packageName $fileType $silentArgs $url
    Install-ChocolateyPackage $packageName $fileType '/SP- /VERYSILENT /NORESTART' $url

    Write-ChocolateySuccess $packageName
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}