terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "task5tfstate"
    container_name       = "tfstate"
    key                  = ".terraform/terraform.tfstate"
    subscription_id      = "45bb3ad1-07fa-405a-9924-4d73f427fe82"
    use_oidc             = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
