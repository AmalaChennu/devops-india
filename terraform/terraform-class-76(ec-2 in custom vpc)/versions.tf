terraform {
 #   required_version = ">=0.14.1"   
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  region = ""
  /*access_key = ""
  secret_key = ""
  */
}