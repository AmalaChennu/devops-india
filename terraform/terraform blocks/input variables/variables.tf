# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0cca14ec4cf708f" # Amazon Linux2 AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}

# Assign When Prompted Using CLI
variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  # default     = "t2.micro"
}  
# for list variable operator
/* variable "ec2_instance_type" {
    description = "EC2 Instance Type"
    type        = list(string)
    default     = [ "t2.micro", "t3.small", "t3.large"]
}*/
# for mapping variables
/* variable "ec2_instance_type" {
    description = "EC2 Instance Type"
    type        = map(string)
    default     = {
      "dell"  = "t2.micro"
      "hp"    = "t3.small"
      "lenovo"= "t3.medium"
  }
}*/  