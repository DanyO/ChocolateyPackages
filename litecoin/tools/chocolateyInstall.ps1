$packageName = 'litecoin' 			# arbitrary name for the package, used in messages
$installerType = 'EXE' 				# only one of these: exe, msi, msu
$url = 'https://download.litecoin.org/litecoin-0.8.7.2/win32/litecoin-0.8.7.2-win32-setup.exe' 					# download url
$url64 = $url 						# 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '/S' 					# "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" 