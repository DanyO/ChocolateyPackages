$packageName = 'VS2013.TfsPowerTools' # arbitrary name for the package, used in messages
$fileType = 'msi'
$silentArgs = '/quiet /norestart'
$url = 'http://visualstudiogallery.msdn.microsoft.com/f017b10c-02b4-4d6d-9845-58a06545627f/file/112253/3/Visual%20Studio%20Team%20Foundation%20Server%202013%20Update%202%20Power%20Tools%20.msi'
$url64bit = $null

try
{
	Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64bit
	
    Write-ChocolateySuccess $packageName
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw 
}