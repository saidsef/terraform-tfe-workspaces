resource "tfe_workspace" "workspace" {
  agent_pool_id                 = var.agent_pool_id
  allow_destroy_plan            = var.allow_destroy_plan
  auto_apply                    = var.auto_apply
  description                   = var.description
  execution_mode                = var.execution_mode
  file_triggers_enabled         = var.file_triggers_enabled
  global_remote_state           = var.global_remote_state
  name                          = var.name
  organization                  = var.organization
  project_id                    = var.project_id
  queue_all_runs                = var.queue_all_runs
  remote_state_consumer_ids     = var.remote_state_consumer_ids
  speculative_enabled           = var.speculative_enabled
  ssh_key_id                    = var.ssh_key_id
  structured_run_output_enabled = var.structured_run_output_enabled
  tag_names                     = values(var.tags)
  terraform_version             = var.terraform_version
  trigger_patterns              = var.trigger_patterns
  trigger_prefixes              = var.trigger_prefixes

  dynamic "vcs_repo" {
    for_each = var.vcs_repo == null ? [] : [1]

    content {
      branch             = var.vcs_repo.branch
      identifier         = var.vcs_repo.identifier
      ingress_submodules = var.vcs_repo.ingress_submodules
      oauth_token_id     = var.vcs_repo.oauth_token_id
      tags_regex         = var.vcs_repo.tags_regex
    }
  }

  working_directory = var.working_directory
}

resource "tfe_variable" "tfe_workspace" {
  for_each     = toset(var.variable_set)
  category     = each.value["category"]
  key          = "TF_VAR_tfe_workspace"
  sensitive    = each.value["sensitive"]
  value        = tfe_workspace.workspace.name
  workspace_id = tfe_workspace.workspace.id
}
