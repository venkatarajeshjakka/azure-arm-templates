$rg = 'arm-template-01'

New-AzResourceGroup -Name $rg -Location centralindia -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json'`
    -storageName 'amdemostorage03a' `
    -storageSKU 'Standard_LRS' `
    -storageTier 'Standard'`
    -environment 'dev' 
