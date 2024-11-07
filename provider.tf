terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.2.0"
    }    
  }
  
}

provider "azurerm" {
  features {    
     resource_group {
       prevent_deletion_if_contains_resources = false
     }
  }
  
  subscription_id = "e8c19839-7903-4c24-9401-ce4a476a4ce2"
  tenant_id       = "32675c9c-0387-4f09-87e4-d57e0c4e1afc"
  client_id       = "b76e4804-f424-4faf-880b-78387dfe08f0"
  client_secret   = "KZS8Q~B.jh8hl3u861p1VjkPDvqgz9zkyMGmDbAu"
  
}
