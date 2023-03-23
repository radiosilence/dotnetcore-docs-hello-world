resource "azurerm_user_assigned_identity" "this" {
  location            = azurerm_resource_group.this.location
  name                = "webapp-law-deploy-identity"
  resource_group_name = azurerm_resource_group.this.name
}


resource "azurerm_federated_identity_credential" "this" {
  name                = "webapp-law-deploy-federated-credential"
  resource_group_name = azurerm_resource_group.this.name
  audience            = ["api://AzureADTokenExchange"]
  issuer              = "https://token.actions.githubusercontent.com"
  parent_id           = azurerm_user_assigned_identity.this.id
  subject             = "repo:radiosilence/dotnetcore-docs-hello-world:environment:Production"
}

resource "azurerm_role_assignment" "this" {
  scope                = azurerm_resource_group.this.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_user_assigned_identity.this.principal_id
}
