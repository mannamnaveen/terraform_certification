resource "aws_instance" "my-ec2-vm" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  key_name      = "thefifty"
  count         = var.ec2_instance_count
  user_data     = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>HELLO, WORLD</h1>" > /var/www/html/index.html
  EOF
  tags = {
    "Name" = "MyEC2-VM"
  }

  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id ]
}