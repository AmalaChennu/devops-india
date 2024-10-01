variable "ami_id" {
  type    = string
  default = "ami-0cff7528ff583bf9a"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}