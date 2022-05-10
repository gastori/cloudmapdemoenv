[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -name NuGet -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Get-WindowsUpdate -IgnoreReboot
Install-WindowsUpdate -AcceptAll -IgnoreReboot
$url = "https://dotnet.microsoft.com/en-us/download/dotnet-framework/thank-you/net48-offline-installer"
$localFolder="c:\dotnet"
New-Item -Path $localFolder -ItemType Directory
$exePath = "c:\dotnet\4.8-net-runtime.exe"
$Wget = New-Object System.Net.WebClient
$Wget.DownloadFile($url, $exePath)
cmd /c start /wait "$exePath" /q /norestart
Remove-Item $exePath -Force -ErrorAction Ignore
Remove-Item $localFolder -Force -ErrorAction Ignore




