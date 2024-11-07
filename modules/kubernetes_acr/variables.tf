variable "location" {
  type = string
  description = "Locacion de kubernetes"
}

variable "resource_group_name" {
  type = string
  description = "Nombre del resource group"
}

variable "dns_prefix" {
  type = string
  description = "DNS Prefix de kubernetes"
}

variable "agent_count" {
  type = number
  description = "Numero de agentes"
}

variable "subnet_id" {
  type = string
  description = "Identificador de subnet"
}

variable "vnet_id" {
  type = string
  description = "Identificador de la vnet"
}

variable "aks_service_principal_app_id" {
  type = string
  description = "Identificacion de la aplicacion"
}

variable "aks_service_principal_client_secret" {
  type = string
  description = "Secret client de la aplicacion"
}