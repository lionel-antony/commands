$psversiontable - show version

Get-Module -ListAvailable

Choco outdated
Choco upgrade powershell-core

Get-NetIPConfiguration

New-NwtIPAddress -InterfaceAlias Ethernet -IPAddress 172.16.0.20 -PrefixLength 24 -DefaultGateway 172.16.0.1

Get-Host

Get-Process | FL 
Get-Process | FT

Get-PSDrive 

Get-Module -ListAvailable

Get-Module 
# to see modules which are loaded

Get-Module -ListAvailable
# to see all available

Import-Module <module name>
# to add into PS instance

Get-Command -Module <module>
# to list commands in a module

Get-Command -Module Hyper-V | Select -Unique Noun | Sort Noun

Get-Module -Name Az* -ListAvailable
#Check to see if the module is already installed

Install-Module -Name Az -AllowClobber
#Install the AzureRM module from PS Gallery

Connect-AzAccount
#Connect and authenticate to your Azure subscription

Get-AzVM -Location "canadacentral"
#List VMs

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
#Add PS Gallery as a trusted repo

Get-PSRepository

Get-Command -Module Az.Compute
#List commands available in Az.Compute Module

Get-Command -Module az.compute | Select-Object -Unique Noun | Sort-Object Noun

Get-Module -ListAvailable | Import-Module
#Install all available modules

(Get-Module Az.Compute).Version
#List version of module

Install-Module Az 
Update-Module Az 

Find-Module AzureADPreview

Get-Help <cmdlet> [-full/detailed/examples/online/showwindows]
Get-Command -Module <module>
Get-Command -Noun <noun>
Update-Help

Get-Help Get-Process -Examples

Get-Command -Noun Process
*List commands with 'process'

Write-Output "Hello World"; Write-Output "Hey There"
#Separate multiple commands on the same line with a semicolon

Get-Process a* | Get-Member

Get-Process | Where-Object { $_.name -eq "notepad" }
#Get Notepad process

Get-Process | Where-Object { $_.name -eq "notepad" } | Stop-Process
#Stop Notepad Process

(Get-Process | Where-Object { $_.name -eq "notepad" } ).kill()
Get-Process -Name notepad | Sort-Object -Property id
Get-Process -Name notepad | Stop-Process

<var>.GetType()
<var>.GetType().fullname
#check the type of an object

Get-Process | Select-Object -Property name, @{name = 'procid'; expression = { $_.id } }

Get-Process | where handles -gt 1000
Get-Process | where handles -gt 1000 | Sort-Object -Property Handles | ft Name, Handles -AutoSize

Get-Process | Out-GridView
Get-Process | Out-GridView -PassThru | Stop-Process

Get-Process | Export-Csv C:\stuff\proc.csv
Get-Process | Export-Clixml C:\stuff\proc.xml
Get-Process | Measure-Object WS -Sum -Maximum -Minimum -Average
Get-Process | Sort-Object -Descending | select -First 5

Get-WinEvent -LogName security -MaxEvents 5

Get-NetAdapter | Where-Object { $_.Name -like "Ethernet*" } | Enable-NetAdapter

# To get the newest 5 processes
Get-Process | Sort-Object -Descending -Property StartTime | Select-Object -First 5

#To count output
Get-Process | Measure-Object WS -Sum

Compare-Object -ReferenceObject $procs1 -DifferenceObject $procs2 -Property Na

#To stop a process
Get-Process -Name notepad | Stop-Process

Get-AdUser -filter * | Remove-ADUser -whatif

$ConfirmPreference = "medium"
Get-Process | Where { $_.name -eq "notepad" } | Stop-Process -confirm:$true

# $_ - represents each object one at a time
Get-Process | Where-Object { $_.name -eq "notepad" } | Stop-Process
Get-Service | Where-Object { $_.status -eq "stopped" } 

# $_ = $PSItem = HandleCount
Get-Process | Where-Object { $_.HandleCount -gt 900 }
Get-Process | Where-Object { $PSItem.HandleCount -gt 900 }
Get-Process | Where-Object HandleCount -gt 900

### --- PowerShell Remoting --- ###

#Enable WinRM
Enable-PSRemoting
Get-PSSessionConfiguration

#Get PC Name
$env:COMPUTERNAME
Invoke-Command -ComputerName lja01 { $env:COMPUTERNAME }

#New Remote User Session
New-PSSession -ComputerName lja01
Get-PSSession
Remove-PSSession

### --- PowerShell Remoting --- ###

### --- DevOPS --- ###



### --- DevOPS --- ###




