output "id" {
  description = "Workspace ID"
  value       = tfe_workspace.workspace.id
  sensitive   = false
}

output "name" {
  description = "Workspace name"
  value       = tfe_workspace.workspace.name
  sensitive   = false
}

output "execution_mode" {
  description = "Workspace execution mode"
  value       = tfe_workspace.workspace.execution_mode
  sensitive   = false
}
