$packageName = 'carbon' 			# arbitrary name for the package, used in messages
$installerType = 'EXE_MSI_OR_MSU' 	#only one of these: exe, msi, msu
$url = 'https://bitbucket.org/splatteredbits/carbon/downloads/Carbon-1.7.0.zip' 					# download url
$unzipLocation = 'C:\Program Files\Carbon'

Install-ChocolateyZipPackage "$packageName" "$url" "$unzipLocation"

# Put Carbon in the PowerShell Modules Path
Copy-Item 'C:\Program Files\Carbon\Carbon' 'C:\Program Files\WindowsPowerShell\Modules\' -force -recurse