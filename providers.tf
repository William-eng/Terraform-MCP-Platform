terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-platform-lab"
    storage_account_name = "sttfmcp598316"
    container_name       = "tfstate"
    key                  = "dev/network.tfstate"

    use_azuread_auth = true
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.14.0"
    }
  }
}

provider "azurerm" {
  features {}
}
