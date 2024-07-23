terraform {
  required_providers {
    azurerm = {
      version = "=2.34.0"
    }
  }
}

provider "azurerm" {
  
  subscription_id = var.subscription_id
  client_id      = var.client_id
  client_secret = var.client_secret
  tenant_id      = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rsaaks"
  location = "West US"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "rsa-aks-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "exampleakscluster"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size   = "Standard_DS2_v2"
  }
  identity {
    type = "SystemAssigned"
  }
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}