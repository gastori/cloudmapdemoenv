[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url0 = "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/defu/2022/04/updateplatform_4ca3e501a402a6d913024fdb532c0750152ffb12.exe"
$localFolder0="c:\defupdate"
New-Item -Path $localFolder0 -ItemType Directory
$exePath0 = "c:\defupdate\defupdate.exe"
$Wget0 = New-Object System.Net.WebClient
$Wget0.DownloadFile($url0, $exePath0)
cmd /c start /wait "$exePath0" /q /norestart
Remove-Item $exePath0 -Force -ErrorAction Ignore
Remove-Item $localFolder0 -Force -ErrorAction Ignore

Update-MpSignature

$url1 = "https://go.microsoft.com/fwlink/?linkid=2088631"
$localFolder1="c:\dotnet"
New-Item -Path $localFolder1 -ItemType Directory
$exePath1 = "c:\dotnet\4.8-net-runtime.exe"
$Wget1 = New-Object System.Net.WebClient
$Wget1.DownloadFile($url1, $exePath1)
cmd /c start /wait "$exePath1" /q /norestart
Remove-Item $exePath1 -Force -ErrorAction Ignore
Remove-Item $localFolder1 -Force -ErrorAction Ignore




