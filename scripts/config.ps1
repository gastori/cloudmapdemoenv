$TLS12Protocol = [System.Net.SecurityProtocolType] 'Ssl3 , Tls12'
$version = "4.8"
$location = "https://dotnet.microsoft.com/en-us/download/dotnet-framework/thank-you/net48-offline-installer"
$exePath = "$env:TEMP\$($version)-net-runtime.exe"

[System.Net.ServicePointManager]::SecurityProtocol = $TLS12Protocol
Update-MpSignature
(New-Object Net.WebClient).DownloadFile($location, $exePath)
cmd /c start /wait "$exePath" /q /norestart
Remove-Item $exePath -Force -ErrorAction Ignore