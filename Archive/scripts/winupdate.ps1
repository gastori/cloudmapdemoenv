[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -name NuGet -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Get-WindowsUpdate -IgnoreReboot
Install-WindowsUpdate -AcceptAll -IgnoreReboot