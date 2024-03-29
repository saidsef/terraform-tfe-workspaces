# Terraform TFE/C Workspaces Module
[![CI](https://github.com/saidsef/terraform-tfe-workspaces/actions/workflows/ci.yaml/badge.svg)](#deployment--usage) ![GitHub issues](https://img.shields.io/github/issues-raw/saidsef/terraform-tfe-workspaces) [![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE.md)

This Terraform workspaces module oversees the configuration and lifecycle of all your Terraform Cloud workspaces. It is built to operate from a designated Terraform Cloud workspace, tasked with provisioning and managing the remaining workspaces through Terraform code (IaC).

## Prerequisites

- Terraform Cloud / Enterprise account
- Terraform >= 1.3
- ...
- Profit?

## Deployment / Usage

```terraform
provider "tfe" {
  hostname = var.hostname
  token    = var.token
  version  = ">= 0.46"
}

module "tfe-workspaces" {
  source  = "saidsef/terraform-tfe-workspaces/tfe"
  version = ">= 1"

  name         = "platform"
  organization = "saidsef"
}
```

## Provider Specifications and Requirements

Please see [TERRAFORM.md](./TERRAFORM.md)

## Source

Our latest and greatest source of `terraform-tfe-workspaces` can be found on [GitHub](https://github.com/saidsef/terraform-tfe-workspaces/). Fork us!

## Contributing

We would :heart: you to contribute by making a [pull request](https://github.com/saidsef/terraform-tfe-workspaces/pulls).

Please read the official [Contribution Guide](./CONTRIBUTING.md) for more information on how you can contribute.
