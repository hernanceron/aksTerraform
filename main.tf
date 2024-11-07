resource "azurerm_resource_group" "rg_aks" {
  location = var.location
  name = "rg-sample-aks"
}
resource "azurerm_resource_group" "rg_ansible" {
  location = var.location
  name = "rg-ansible-sample"
}

module "vnet" {
  source = "./modules/networking"
  location = var.location
  resource_group_name = azurerm_resource_group.rg_aks.name
}

module "kubernetes" {
  source = "./modules/kubernetes_acr"
  location = var.location
  agent_count = var.agent_count
  aks_service_principal_app_id = var.aks_service_principal_app_id
  aks_service_principal_client_secret = var.aks_service_principal_client_secret
  dns_prefix = var.dns_prefix
  resource_group_name = azurerm_resource_group.rg_aks.name
  subnet_id = module.vnet.subnet_id
  vnet_id = module.vnet.vnet_id
  depends_on = [ module.vnet ]
}