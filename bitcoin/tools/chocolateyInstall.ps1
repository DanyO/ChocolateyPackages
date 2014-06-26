$packageName = 'bitcoin' # arbitrary name for the package, used in messages
$fileType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/0.9.2.1/bitcoin-0.9.2.1-win32-setup.exe'
$url64bit = 'https://bitcoin.org/bin/0.9.2.1/bitcoin-0.9.2.1-win64-setup.exe'
try
{
	#Install-ChocolateyPackage $packageName $fileType $silentArgs $url
    Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit

    Write-ChocolateySuccess $packageName
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}