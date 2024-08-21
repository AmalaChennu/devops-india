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
resource "aws_instance" "myec2" {
    ami   = ""
    instance_type = "t2.micro"
    tags  {
         "Name" = "EC2-Demo"
    }
}