$rg = 'arm-template-01'
$today = Get-Date -Format "MM-dd-yyyy"

$suffix = Get-Random -Maximum 1000

$deploymentName="arm-template-testing-"+"$today"+"-"+$suffix

New-AzResourceGroup -Name $rg -Location centralindia -Force

New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rg `
    -TemplateFile '../Templates/01-storage.json'`
    -TemplateParameterFile '../Parameters/01-storage.parameters.json'