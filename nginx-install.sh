#!/bin/bash
password=$1
echo -e $password | sudo -S apt install nginx -y 
echo "Nginx installed successfully!"
sudo chown $USER /var/www/html
touch /var/www/html/index.html
echo "Hello World" > /var/www/html/index.html

uname -a >> /var/www/html/index.html
