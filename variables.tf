variable "agent_pool_id" {
  description = "ID of the agent pool to assign to the workspace"
  type        = string
  default     = null
}

variable "allow_destroy_plan" {
  description = "Allow destroy plans can be queued on the workspace?"
  type        = bool
  default     = true
}

variable "auto_apply" {
  description = "Allow to automatically apply changes when a Terraform plan is successful?"
  type        = bool
  default     = false
}

variable "description" {
  description = "Workspace description"
  type        = string
  default     = "Workspace managed by Terraform"
}

variable "execution_mode" {
  description = "Execution mode to use. When set to `local`, the workspace will be used for state storage only"
  type        = string
  nullable    = false
  default     = "remote"

  validation {
    condition     = contains(["agent", "local", "remote"], var.execution_mode)
    error_message = "Valid values are `remote`, `local` or `agent`. Using Terraform Enterprise, only `remote` and `local` execution modes are valid"
  }
}

variable "file_triggers_enabled" {
  description = "Filter runs based on the changed files in a VCS push. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. Workspaces with no Terraform working directory will always trigger runs"
  type        = bool
  default     = true
}

variable "global_remote_state" {
  description = "Allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (`remote_state_consumer_ids`)"
  type        = bool
  default     = false
}

variable "name" {
  description = "Workspace name"
  type        = string
}

variable "organization" {
  description = "Terraform Cloud organization name"
  type        = string
}

variable "project_id" {
  description = "Project ID where the workspace should be created"
  type        = string
  default     = null
}

variable "queue_all_runs" {
  description = "Start workspace automatically performing runs immediately after its creation"
  type        = bool
  default     = true
}

variable "remote_state_consumer_ids" {
  description = "The set of workspace IDs set as explicit remote state consumers for the given workspace."
  type        = list(string)
  default     = []
}

variable "speculative_enabled" {
  description = "Allows speculative plans.  Setting this to `false` prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors"
  type        = bool
  default     = true
}

variable "ssh_key_id" {
  description = "SSH key to assign to the workspace"
  type        = string
  default     = null
}

variable "structured_run_output_enabled" {
  description = "If workspace should show output from Terraform runs using the enhanced UI when available. Setting this to `false` ensures that all runs in this workspace will display their output as text logs"
  type        = bool
  default     = true
}

variable "tags" {
  default     = {}
  description = "Map of tags to be applied to all resources"
  type        = map(string)
  sensitive   = false
}

variable "terraform_version" {
  description = "Terraform version to use for this workspace. This can be either an exact version or a version constraint (like `~> 1.0.0`); if you specify a constraint, the workspace will always use the newest release that meets that constraint"
  type        = string
  default     = null
}

variable "trigger_patterns" {
  description = "List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository"
  type        = list(string)
  default     = null
}

variable "trigger_prefixes" {
  description = "List of repository-root-relative paths which describe all locations to be tracked for changes"
  type        = list(string)
  default     = null
}

variable "variable_set" {
  description = "Variable sets, this should be grouped in either `terraform` or `env` list with a map of key -> value"
  type = list(object({
    key       = string
    value     = string
    env       = optional(string, "env")
    sensitive = optional(bool, false)
  }))
  default = []
}

variable "vcs_repo" {
  description = "Enable UI/VCS-driven run workflow"

  type = object({
    branch             = optional(string)
    identifier         = string
    ingress_submodules = optional(bool, false)
    oauth_token_id     = string
    tags_regex         = optional(string)
  })

  default = null
}

variable "working_directory" {
  description = "Relative path that Terraform will execute within. Defaults to the root of your repository"
  type        = string
  default     = null
}
