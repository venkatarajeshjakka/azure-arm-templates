$rg = "arm-template-02"

New-AzResourceGroup -Name $rg -Location centralindia -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage-test' `
    -ResourceGroupName $rg `
    -TemplateFile './azure-deploy.json'
   