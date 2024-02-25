## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.46 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.52.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.tfe_workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | ID of the agent pool to assign to the workspace | `string` | `null` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Allow destroy plans can be queued on the workspace? | `bool` | `true` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Allow to automatically apply changes when a Terraform plan is successful? | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Workspace description | `string` | `"Workspace managed by Terraform"` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Execution mode to use. When set to `local`, the workspace will be used for state storage only | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Filter runs based on the changed files in a VCS push. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. Workspaces with no Terraform working directory will always trigger runs | `bool` | `true` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | Allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (`remote_state_consumer_ids`) | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Workspace name | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID where the workspace should be created | `string` | `null` | no |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | Start workspace automatically performing runs immediately after its creation | `bool` | `true` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | The set of workspace IDs set as explicit remote state consumers for the given workspace. | `list(string)` | `[]` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Allows speculative plans.  Setting this to `false` prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors | `bool` | `true` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | SSH key to assign to the workspace | `string` | `null` | no |
| <a name="input_structured_run_output_enabled"></a> [structured\_run\_output\_enabled](#input\_structured\_run\_output\_enabled) | If workspace should show output from Terraform runs using the enhanced UI when available. Setting this to `false` ensures that all runs in this workspace will display their output as text logs | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to be applied to all resources | `map(string)` | `{}` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Terraform version to use for this workspace. This can be either an exact version or a version constraint (like `~> 1.0.0`); if you specify a constraint, the workspace will always use the newest release that meets that constraint | `string` | `null` | no |
| <a name="input_trigger_patterns"></a> [trigger\_patterns](#input\_trigger\_patterns) | List of glob patterns that describe the files Terraform Cloud monitors for changes. Trigger patterns are always appended to the root directory of the repository | `list(string)` | `null` | no |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | List of repository-root-relative paths which describe all locations to be tracked for changes | `list(string)` | `null` | no |
| <a name="input_variable_set"></a> [variable\_set](#input\_variable\_set) | Variable sets, this should be grouped in either `terraform` or `env` list with a map of key -> value | <pre>list(object({<br>    key       = string<br>    value     = string<br>    env       = optional(string, "env")<br>    sensitive = optional(bool, false)<br>  }))</pre> | `[]` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | Enable UI/VCS-driven run workflow | <pre>object({<br>    branch             = optional(string)<br>    identifier         = string<br>    ingress_submodules = optional(bool, false)<br>    oauth_token_id     = string<br>    tags_regex         = optional(string)<br>  })</pre> | `null` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | Relative path that Terraform will execute within. Defaults to the root of your repository | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Workspace ID |
| <a name="output_name"></a> [name](#output\_name) | Workspace name |
