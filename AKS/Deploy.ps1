
$name = "rg-aks-dev"
$location = "uksouth"

New-AzResourceGroup -Name $name -location $location -Force

New-AzResourceGroupDeployment -Name "Demo" -TemplateFile empty.bicep -TemplateParameterFile .\dev.bicepparam -ResourceGroupName $name