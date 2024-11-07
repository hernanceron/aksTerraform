variable "location" {
  type = string
  description = "Locacion de los recursos"
}

variable "dns_prefix" {
  type = string
  description = "Valor"
}

variable "agent_count" {
  type = number
  description = "Numero de nodos"
}

variable "aks_service_principal_app_id" {
  type = string
  description = "App id del service principal"
}

variable "aks_service_principal_client_secret" {
  type = string
  description = "client secret"
}

variable "ssh_public_key" {
  
}