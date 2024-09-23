#! /bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl httpd enable
suod service httpd start
echo "<h1> Devops Terraform File Provisioners class ! AWS Infra created using Terraform scrip in cloud </h1>" | sudo tee /var/www/html/index.html