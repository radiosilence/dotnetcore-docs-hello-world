
output "azure_client_id" {
  description = "GitHub secret for AZURE_CLIENT_ID"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "azure_tenant_id" {
  description = "GitHub secret for AZURE_TENANT_ID"
  value       = azurerm_user_assigned_identity.this.tenant_id
}

output "azure_subscription_id" {
  description = "GitHub secret for AZURE_SUBSCRIPTION_ID"
  value       = data.azurerm_subscription.primary.subscription_id
}
