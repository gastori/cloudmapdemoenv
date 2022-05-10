[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://go.microsoft.com/fwlink/?linkid=2088631"
$localFolder="c:\dotnet"
New-Item -Path $localFolder -ItemType Directory
$exePath = "c:\dotnet\4.8-net-runtime.exe"
$Wget = New-Object System.Net.WebClient
$Wget.DownloadFile($url, $exePath)
cmd /c start /wait "$exePath" /q /norestart
Remove-Item $exePath -Force -ErrorAction Ignore
Remove-Item $localFolder -Force -ErrorAction Ignore




