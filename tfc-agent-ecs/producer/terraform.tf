terraform {
  required_version = ">= 0.12.26"
  required_providers {
    aws = {
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "sleepnumberlabs"

    workspaces {
      name = "terraform-agent-infra"
    }
  }
}