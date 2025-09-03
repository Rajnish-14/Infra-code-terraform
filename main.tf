terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "fc0f895b-de69-4d59-96a9-b13d6894a7e7"
}

resource "azurerm_resource_group" "github-rg"{
  name     = "rg123"
  location = "West Europe"
}