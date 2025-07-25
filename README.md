# Terraform: Azure: State Management

This repository contains IaC to provision state back-end for Terraform in Azure. It uses an Azure Storage Account to store the Terraform state files, which is a best practice for managing state in a collaborative environment.

- **Authors**: PaperCloud Tech – OSS Division
- **Created on**: 07/24/2025

## Usage

To use the provisioned back-end, use the following provider configuration. Please ensure you have necessary environment variables setup or follow the guide [here](https://developer.hashicorp.com/terraform/language/backend/azurerm) to understand on how to setup the necessary credentials for Terraform to successfully use the back-end with Azure.

```hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "VERSION"
    }
  }

  backend "azurerm" {
    tenant_id            = "AZURE_TENANT_ID"
    client_id            = "AZURE_APP_CLIENT_ID"

    resource_group_name  = "AZURE_RG_NAME"
    storage_account_name = "AZURE_SA_NAME"
    container_name       = "AZURE_CONTAINER_NAME"
    key                  = "STATE_KEY"
  }
}
```

## Reference

This document was solely created from Azure documentation on state management for Terraform. You can learn more about it [here](https://learn.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?tabs=azure-cli).
