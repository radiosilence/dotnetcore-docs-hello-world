terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  #   cloud {
  #     organization = "crack-squirrels"
  #     workspaces {
  #       name = "learn-azure-webapp-law"
  #     }
  #   }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    team               = "Ops"
    dataclassification = "C3"
  }
}


data "azurerm_subscription" "primary" {
}
