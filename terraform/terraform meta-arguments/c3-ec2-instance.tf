# Resource-8: Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
    ami                    = "ami-47a51fa2771081e"   # Amazon Linux
    instance_type          = "t2.micro"
    key_name               = "keypairnameof.pem file without .pemextenction"
    subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id 
    vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
    # User Data = file("apache-install.sh")
    user_data = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install httpd -y
      sudo systemctl enable httpd
      sudo systemctl start httpd
      echo "<h>Devops Yogi | AWS Infra Created Using Terraform in a Region</h>" /var/www/html/index.html
      EOF
    tags = {
        "Name" = "myec2vm"
    } 
}