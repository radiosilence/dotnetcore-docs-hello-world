variable "federated_identity_subject" {
  type        = string
  description = "The subject of the federated identity credential"
  default     = "repo:radiosilence/dotnetcore-docs-hello-world:environment:Production"
}


variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "LearnAzureWebappLawRG"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "uksouth"
}
