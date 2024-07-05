

for ubuntu

#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
cd /var/www/html/
sudo apt-get install unzip -y
sudo wget url link
unzip filename.zip
cd folder
mv * /var/www/html/


for linux 

#!/bin/bash
sudo yum update
sudo yum install apache2 -y
cd /var/www/html/
sudo yum install unzip -y
sudo wget url link
unzip filename.zip
cd folder
mv * /var/www/html/
sudo systemctl start httpd
sudo systemctl status httpd