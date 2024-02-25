provider "tfe" {}

module "workspaces" {
  source  = "saidsef/workspaces/tfe"
  version = ">= 1"

  name         = var.name
  organization = var.organization
}
