### DSC - Sql Server ###

### To install modules ###

Install-Module PSDesiredStateConfiguration
Install-Module SqlServer
Install-Module SqlServerDsc

Get-DscResource -Module PSDesiredStateConfiguration
Get-DscResource -Module SqlServerDsc

### To install from the PowerShell gallery 

Find-Module -Name SqlServerDsc | Install-Module

### To confirm installation, run the below command and ensure you see the SQL Server DSC resources available:

Get-DscResource -Module SqlServerDsc

### End - To install modules ###