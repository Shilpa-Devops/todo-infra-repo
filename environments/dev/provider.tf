terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-todobackend"
    storage_account_name = "todostorage19"
    container_name       = "todocon"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "049b71f4-e602-4023-9c26-9114ecb30841"
}
