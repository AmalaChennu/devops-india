terraform {                                         #---------------main provider
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }
  }
}

provider "aws" {                                     #--------------feature provider
  # Configuration options
  region = ""
  access_key = ""
  secret_key = ""
}