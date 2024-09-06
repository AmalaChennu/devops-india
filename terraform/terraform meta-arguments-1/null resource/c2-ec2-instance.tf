# Create EC2 Instance   -  Amazon Linux
resource "aws_instance" "my-ec2-vm" {
    ami           = "ami from aws cloud"  # - Amazon Linux
    instance_type = t2.micro
    key_name      = "keypairfilenameno.pem required"
    # user_data  = file("apache-install.sh")
    user_data  = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install httpd -y
      sudo systemctl enable httpd
      sudo systemctl start httpd
      echo "<h>Devops Yogi | AWS Infra Created Using Terraform in a Region</h>" /var/www/html/index.html
      EOF
    tags = {
        "Name" = "ec2-vm-null resource"
    }
}
# Wait for 90 seconds after creating the instance
resource "time_sleep" "wait_90_seconds" {
    depends_on = [aws_instance.my-ec2-vm]
    create_duration = "90s"
}
# Sync App1 Static Content to Webserver using Provisioners
resource "null_resource" "sync_app1_static" {
    depends_on = [ time_sleep.wait_90_seconds]
    triggers = {
        always-update = timestamp()
    }
# Connection Block for Provisioners to connect to ec2 instance
    Connection {
       type = "ssh"
       host = aws_instance.my-ec2-vm.public_ip
       user = "ec2-user"
       password = ""
       private_key = file("private-key/keypairname.pem")
}
}