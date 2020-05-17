# Provisioning VMs with Azure Portal, Azure CLI and PowerShell

# Creating a VMs with Azure Portal, Azure CLI and PowerShell
# a. create a resource group

# b. create a virtual network

# c. use managed storage or storage accounts

# Azure CLI
Install-Module Az
Update-Module

az Login

# list resource groups
az group list -o table

# delete a resource group
az group delete -n MyResourceGroup

# list locations
az account list-locations -o table

# create a resource group
az group create --name "ljarg01" --location "southindia"

