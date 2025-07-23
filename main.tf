resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_resource_group" "this" {
  name     = "terraform-state-mgmt"
  location = var.region

  tags = var.tags
}

resource "azurerm_storage_account" "this" {
  name                     = "tfstate${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }

  tags                      = var.tags
}

resource "azurerm_storage_container" "this" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}
