terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region = var.region
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
}