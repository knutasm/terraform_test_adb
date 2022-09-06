terraform {
  required_version = ">= 1.1.0"


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstater4nd0m"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    # tenant_id = "66dcc5eb-37d0-4128-bad3-4e654f2d80ec"
    # subscription_id = "a5dac428-e263-43fd-9776-4542f8c3a3cd"
  }

}

provider "azuread" {
  features {}
}