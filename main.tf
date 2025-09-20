terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}
terraform {
  backend "azurerm" {
    storage_account_name = "abcd12349974"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
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
