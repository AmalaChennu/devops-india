# Terraform block for version of terraform
terraform {             
    required_version = "~ 0.14"
    /*required_version = "~> 0.14"
     required_version = "= 0.14"
     required_version = "> = 0.14"
    */
# cloud provider you want and its version
    required_providers {    
      aws = {
          source = "hashicorp/aws"
          version = "4.47.0"
      }
    }     
}
# Define a provider block
provider "aws" { 
     region = "   "
     profile = "default"
}
# Resource abalock
resource "aws_vpc" "resourceid" {
    cidr_block = "10.0.0.0/32"
    tags = {
        Name = "tf-demo"
    }
}
# Multi Provider configuration
provider "aws" {
    region = "   "
    profile = "default"
}
provider "aws" {
    region = "   "
    profile = "default"
    alias = "(my region name)"
}
# The two providers above must have two different regions to make this a multi provider configuration
# We can define multiple providers in same terraform using alias without confusion

# provider dependency

# Input variables Block

variable "aws_region" {    # aws region is a variable here
    description = "this region variable"
    type = string
    default = "(any region)"
}
variable "ec2_ami_id" {
    description = "this id for ami ID"
    type = string
    default = "(ami id from aws cloud)"
}
variable "ec2_instance-count" {
    description = "this is for count"
    type = string
    default = "(count of default instances like 1,2,3)"
}
