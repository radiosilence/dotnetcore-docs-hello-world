
output "AZURE_CLIENT_ID" {
  description = "GitHub secret for AZURE_CLIENT_ID"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "AZURE_TENANT_ID" {
  description = "GitHub secret for AZURE_TENANT_ID"
  value       = azurerm_user_assigned_identity.this.tenant_id
}

output "AZURE_SUBSCRIPTION_ID" {
  description = "GitHub secret for AZURE_SUBSCRIPTION_ID"
  value       = data.azurerm_subscription.primary.subscription_id
}
