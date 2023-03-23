
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
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
    }
  }
}
