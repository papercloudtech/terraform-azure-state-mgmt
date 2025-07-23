terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.azure_app_client_id
  client_secret   = var.azure_app_client_secret
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id

  resource_provider_registrations = "none"
}
