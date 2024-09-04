# Terraform Block
terraform {
  required_version = ">=0.14.6"
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
    }
    null = {
        source  = "hashicorp/null"
        version = "~> 3.0.0"
    }
    time = {
        source  = "hashicorp/aws"
        version = "~> 0.6.0"
    }
  }
}
# Provider Block
provider "aws" {
  region = var.aws_region
  profile = "default"
}