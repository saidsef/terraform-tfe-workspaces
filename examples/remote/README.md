## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.46 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_workspaces"></a> [workspaces](#module\_workspaces) | saidsef/workspaces/tfe | >= 1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Workspace name | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Workspace ID |
| <a name="output_name"></a> [name](#output\_name) | Workspace name |
