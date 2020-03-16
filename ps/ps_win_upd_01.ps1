Set-ExecutionPolicy RemoteSigned
Install-PackageProvider NuGet
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Get-WindowsUpdate -Install