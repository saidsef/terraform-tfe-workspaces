provider "tfe" {}

module "workspaces" {
  source                        = "../../"
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
  terraform_version             = var.terraform_version
  trigger_patterns              = var.trigger_patterns
  trigger_prefixes              = var.trigger_prefixes
  variable_set                  = var.variable_set
  vcs_repo                      = var.vcs_repo
  working_directory             = var.working_directory
}
