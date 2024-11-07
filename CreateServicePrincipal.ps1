# Variables
$resourceGroupName = "rg-sample-aks"
$acrName = "samplecontainerregistry1"
$servicePrincipalId = "b76e4804-f424-4faf-880b-78387dfe08f0"

# Obtener el ID del ACR
$acrId = (Get-AzContainerRegistry -ResourceGroupName $resourceGroupName -Name $acrName).Id

# Asignar el rol AcrPull al Service Principal
New-AzRoleAssignment -ObjectId $servicePrincipalId -RoleDefinitionName "AcrPull" -Scope $acrId

Write-Host "Rol AcrPull asignado al Service Principal con ID: $servicePrincipalId"
