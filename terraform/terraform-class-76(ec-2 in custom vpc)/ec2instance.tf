resource "aws_instance" "my-ec2-instance" {
    ami                    = "get from aws cloud" # Amazon Linux
    instance type          = "t2.micro"
    key_name               = "key filename"
    subnet_id              = aws_subnet.vpc-dev-public-subnet-1.id
    vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
    # User_data = file["apache-install.sh"] 
    user_data = <<-EOF
         #!/bin/bash
        sudo yum update -y
        sudo yum install httpd -y
        sudo systemctl enable httpd
        sudo systemctl start httpd
        echo "<h1> Welcome to Terraform Class </h1>" > /var/www/html/ index.html
        EOF
        tags {
            "Name" = "myec2"
        }
}    