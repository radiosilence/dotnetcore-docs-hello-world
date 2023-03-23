
output "azure_client_id" {
  value = azurerm_user_assigned_identity.this.client_id
}

output "azure_tenant_id" {
  value = azurerm_user_assigned_identity.this.tenant_id
}

output "azure_subscription_id" {
  value = data.azurerm_subscription.primary.subscription_id
}
