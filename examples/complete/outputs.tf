output "id" {
  description = "Workspace ID"
  value       = module.workspaces.id
  sensitive   = false
}

output "name" {
  description = "Workspace name"
  value       = module.workspaces.name
  sensitive   = false
}

output "execution_mode" {
  description = "Workspace execution mode"
  value       = module.workspaces.execution_mode
  sensitive   = false
}
