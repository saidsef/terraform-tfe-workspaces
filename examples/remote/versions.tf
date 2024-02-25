terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.46"
    }
  }

  required_version = ">= 1.3"
}
