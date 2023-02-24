#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd  
echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" | sudo tee /var/www/html/index.html
