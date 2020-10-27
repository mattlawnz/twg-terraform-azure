# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
    features {}

    subscription_id = var.azure_env.subscription_id
    client_id       = var.azure_env.client_id
    client_secret   = var.azure_env.client_secret
    tenant_id       = var.azure_env.tenant_id
}