# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  count         = var.ec2_instance_count
  user_data     = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1> Welcome To Devops | AWS Infra Created Using Terraform in us-east- Region </h1>
    EOF
  vpc_secuity_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]  
  tags = {
    "Name" = "myc2vm"
  }
}