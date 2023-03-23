terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  cloud {
    organization = "crack-squirrels"
    workspaces {
      name = "learn-azure-webapp-law"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = "LearnAzureWebappLawRG"
  location = "uksouth"

  tags = {
    team               = "Ops"
    dataclassification = "C3"
  }
}

resource "azurerm_service_plan" "this" {
  name                = "learn-azure-webapp-law"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku_name            = "S1"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "this" {
  name                = "learn-azure-webapp-law"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_service_plan.this.location
  service_plan_id     = azurerm_service_plan.this.id

  site_config {

  }
}
