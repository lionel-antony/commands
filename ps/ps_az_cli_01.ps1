# Install Azure Powershell Module
Install-Module Az -Force -AllowClobber
Import-Module Az

# Use Ctrl+space to get IntelliSense

# Connect to Azure Account
Connect-AzAccount

# Get Az Subscription
Get-AzContext

# Select Az Subscription
Select-AzSubscription -Subscription "Free Trial"

# Get Az Resource Groups
Get-AzResourceGroup | Format-Table
Get-AzResourceGroup | Format-List
Get-AzResourceGroup | Format-Wide
Get-AzResourceGroup | Export-Csv
Get-AzResourceGroup | Out-GridView
Get-AzResourceGroup | Out-GridView -PassThru
Get-AzResourceGroup | Select-Object Location, ResourceGroupName
Get-AzResourceGroup | Where-Object { $_.Location -eq 'eastus' }

# Separate a long command
Get-AzResourceGroup |` 
Where-Object { $_.Location -eq 'eastus' } | ` i
Select-Object Location, ResourceGroupName

PS D:\reposgh\commands> Get-AzResourceGroup |`
>> Where-Object { $_.Location -eq 'eastus' } |`
>> Select-Object Location, ResourceGroupName

# Create a Resource Group
New-AzResourceGroup -Name amdemo -Location 'North Europe'

# Create a VM
New-AzVM -ResourceGroupName amdemo -Location 

New-AzVM -ResourceGroupName AzLion -Location 'Central India' -Name VMLion2 -Image UbuntuLTS

