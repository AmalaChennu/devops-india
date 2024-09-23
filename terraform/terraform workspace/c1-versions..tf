# Terraform Block
terraform {
    required_version = ">=0.14.6"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    # Adding Backend as s3 for Remote State Storage
    backend "s3" {
      bucket = "terraformstatebackend"
      key    = "workspace/terraform.tfstate"  # Creates a statecommands folder and puts .tfstate file in it
      region = "us-east-1"

      # Enable during step-09
      # For State Locking
      dynamodb_table = "Yogi"  # Lock ID
    }
}    
# Provider Block
provider "aws" {
    region  = var.aws_region
    profile = "default"
}