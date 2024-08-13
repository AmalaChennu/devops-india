terraform {
 #   required_version = ">= 0.14.1"   
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  region = ""
  access_key = ""
  secret_key = ""
}
/*
play with terraform version
    required_version = "~> 0.14.3"
    required_version = "= 0.14.4"
    required_version = ">= 0.13"
    required_version = "=0.13 "
    required_version = "~> 0.13"

play with provider version
  version = "~> 3.0"
  version = ">= 3.0.0", "<3.1.0"
  version = ">= 3.0.0", "<= 3.1.0"
  version = "~> 2.0"
  version = "~> 3.0"
*/