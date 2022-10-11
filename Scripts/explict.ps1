$rg = 'arm-template-01'
$today = Get-Date -Format "MM-dd-yyyy"

$suffix = Get-Random -Maximum 1000

$deploymentName="arm-template-testing-"+"$today"+"-"+$suffix

New-AzResourceGroup -Name $rg -Location centralindia -Force

New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rg `
    -TemplateFile '../Templates/arm-child-resource.json'`
    -TemplateParameterFile '../Parameters/arm-child-resource.parameters.json'
    