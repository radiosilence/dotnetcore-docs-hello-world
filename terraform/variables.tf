variable "federated_identity_subject" {
  type        = string
  description = "The subject of the federated identity credential"
  default     = "repo:radiosilence/dotnetcore-docs-hello-world:environment:Production"
}

variable "tfcloud_org" {
  type        = string
  description = "The name of the Terraform Cloud organization"
  default     = "crack-squirrels"
}

variable "tfcloud_workspace_name" {
  type        = string
  description = "The name of the Terraform Cloud workspace"
  default     = "learn-azure-webapp-law"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "LearnAzureWebappLawRG"
}
