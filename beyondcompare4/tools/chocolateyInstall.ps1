$packageName = 'beyondcompare4' 	# arbitrary name for the package, used in messages
$installerType = 'EXE' 				#only one of these: exe, msi, msu
$url = 'http://www.scootersoftware.com/BCompare-4.0.0.18291.exe' 					# download url
$url64 = $url 						# 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '/SP- /VERYSILENT /NORESTART' 	# "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"