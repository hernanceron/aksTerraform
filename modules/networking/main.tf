resource "azurerm_virtual_network" "vnet-aks" {
  name = "myVnetAKS"
  resource_group_name = var.resource_group_name
  location = var.location
  address_space = [ "10.30.0.0/16" ]
  tags = {
    environment = "Desarrollo"
  }
}

resource "azurerm_subnet" "subnet_nat" {
  name = "natSubnet"  
  resource_group_name = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet-aks.name
  address_prefixes = [ "10.30.2.0/24" ]
}

resource "azurerm_public_ip" "nat_public_ip" {
  name = "myNATPublicIP"
  location = var.location
  resource_group_name = var.resource_group_name
  allocation_method = "Static"
  sku = "Standard"
  tags = {
    environment = "Desarrollo"
  }
}

resource "azurerm_nat_gateway" "sample_nat" {
  name = "myNatGateway"
  location = var.location
  resource_group_name = var.resource_group_name
  tags = {
    environment = "Desarrollo"
  }
}

resource "azurerm_nat_gateway_public_ip_association" "ip_association" {
  nat_gateway_id = azurerm_nat_gateway.sample_nat.id
  public_ip_address_id = azurerm_public_ip.nat_public_ip.id
}

resource "azurerm_subnet_nat_gateway_association" "association_nat" {
  subnet_id = azurerm_subnet.subnet_nat.id
  nat_gateway_id = azurerm_nat_gateway.sample_nat.id
}