$packageName = 'skitch' 			# arbitrary name for the package, used in messages
$installerType = 'EXE' 	#only one of these: exe, msi, msu
$url = 'http://evernote.com/download/get.php?file=SkitchWindows' 					# download url
$url64 = $url 						# 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '--unattendedmodeui none --mode unattended' 	# "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) 				#please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"