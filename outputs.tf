output "id" {
  description = "Workspace ID"
  value       = tfe_workspace.workspace.id
}

output "name" {
  description = "Workspace name"
  value       = tfe_workspace.workspace.name
}
