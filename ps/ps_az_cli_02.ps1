# Create multiple storage accounts
$rg = "amdemo"

foreach ($i in 1..10) {
    New-AzStorageAccount `
        -ResourceGroupName $rg `
        -Name "amdemostorage$i" `
        -SkuName Standard_LRS `
        -Location 'North Europe'
        -AsJob  
}