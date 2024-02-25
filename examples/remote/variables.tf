variable "name" {
  description = "Workspace name"
  type        = string
  sensitive   = false
}

variable "organization" {
  description = "Terraform Cloud organization name"
  type        = string
  sensitive   = false
}
