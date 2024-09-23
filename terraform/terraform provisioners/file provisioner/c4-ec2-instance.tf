# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
   ami            = data.aws_ami.amzlinux.id 
   instance_type  = var.instance_type
   key_name       = pemfilename  # do not include .pem with file name
   # count - Terraform Workspace  -- "default" ? 1 : 1
   user_data = file("apache-install.sh")
   vpc_security_group_ids = [aws_security_group.V.id, aws_security_group.W.id]
   tags = {
     "Name" = "vm-${terraform.workspace}-0"     
   }
# Play With /tmp folder in EC Instance with File Provisioner
   # Connection Block for provisioners to connect to EC2 Instance
   connection {
     type = "ssh"
     host = self.public_ip  # Understand what is "self"
     user = "ec2-user"
     password = ""
     private_key = file("private-key/filename.pem")
   }
  # Copies the file-copy.html file to /tmp/file-copy.html
   Provisioner "file" {
     source      = "apps/file-cop.html"
     destination = "/tmp/file-copy.html"
  }
  # Copies the string content into /tmp/file.log  
   Provisioner "file" {
     source      = "ami used: ${self.ami}" # understand What is "self"
     destination = "/tmp/file.log"
   }
   # copies the app1 folder to /tmp - FOLDER COPY
   Provisioner "file" {
     source      = "apps/app1"
     destination = "/tmp"
   } 
   # 
}