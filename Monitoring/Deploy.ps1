
$name = "rg-monitoring-dev"
$location = "uksouth"

New-AzResourceGroup -Name $name -location $location -Force

New-AzResourceGroupDeployment -Name "Demo" -TemplateFile .\main.bicep -ResourceGroupName $name