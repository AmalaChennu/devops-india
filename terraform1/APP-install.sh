# for linux server

#!  /bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo service httpd start
sudo echo '<h1>Welcome to devops with terraform shell script -APP-1</h1/> | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Devops-classes - App1</h1> <body> <p>Terraform-Demo</p> <p>Application version: v1</p> </body></html>' | sudo tee /var/www/html/app1/index.html 


# for ubuntu server

#!  /bin/bash
#sudo apt-get update -y
#sudo apt-get install apache2 -y
#sudo systemctl enable apache2
#sudo service apache2 start
#sudo echo '<h1>Welcome to devops with terraform shell script -APP-1</h1/> | sudo tee /var/www/html/index.html
#sudo mkdir /var/www/html/app1
#sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Devops-classes - App1</h1> <body> <p>Terraform-Demo</p> <p>Application version: v1</p> </body></html>' | sudo tee /var/www/html/app1/index.html 