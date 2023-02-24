#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo servie httpd start
sudo systemctl enable httpd
echo "<h1>Hello World</h1>" > /var/www/html/index.html