resource "azurerm_kubernetes_cluster" "k8s" {
  location = var.location
  name = "k8s-sample"
  resource_group_name = var.resource_group_name
  dns_prefix = var.dns_prefix
  
  default_node_pool {
    name = "default"
    node_count = var.agent_count
    vm_size = "Standard_DS2_v2"
    vnet_subnet_id = var.subnet_id

    node_labels = { role = "worker" }    
  }
  
  network_profile {
    network_plugin = "azure"
    network_policy = "azure"
    load_balancer_sku = "standard"
    outbound_type = "userAssignedNATGateway"
    
  }

  service_principal {
    client_id = var.aks_service_principal_app_id
    client_secret = var.aks_service_principal_client_secret
  }

  tags = {
    environment = "Desarrollo"
  }

}

resource "azurerm_container_registry" "acr" {
  name = "sampleContainerRegistry1"
  resource_group_name = var.resource_group_name
  location = var.location
  sku = "Basic"
}

resource "azurerm_role_assignment" "acr_pull" { 
  role_definition_name = "AcrPull"
  scope = azurerm_container_registry.acr.id  
  principal_id = var.aks_service_principal_app_id
  skip_service_principal_aad_check = true
  depends_on = [ azurerm_kubernetes_cluster.k8s, azurerm_container_registry.acr ]
}
