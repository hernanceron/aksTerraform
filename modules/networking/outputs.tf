output "vnet_id" {
  value = azurerm_virtual_network.vnet-aks.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet_nat.id
}

output "public_ip" {
  value = azurerm_public_ip.nat_public_ip.public_ip_prefix_id
}