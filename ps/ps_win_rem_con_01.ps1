# Enable WinRM (Windows Remote Management) on Remote
# Ensure WinRM is set to Automatic and is running

WinRM QuickConfig

Enable-PSRemoting -Force

Enter-PSSession -ComputerName 10.48.1.64 -Credential BLR\antonyl