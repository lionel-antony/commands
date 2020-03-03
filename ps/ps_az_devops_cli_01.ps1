### Azure DevOps Cli ###
az extension add --name azure-devops
az extension list
az extension show --name azure-devops

# Configure the Project
az devops configure --defaults organization=https://dev.azure.com/contoso project=ContosoWebApp