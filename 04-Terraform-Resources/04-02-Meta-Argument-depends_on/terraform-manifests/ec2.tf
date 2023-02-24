resource "aws_instance" "web" {
  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  key_name               = "thefifty"
  vpc_security_group_ids = [aws_security_group.my_vpc_sg.id]
  user_data              = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install httpd -y
      sudo systemctl enable httpd
      sudo systemctl start httpd
      echo "<h1>Hello World</h1>" > /var/www/html/index.html
    EOF

  tags = {
    Name = "ApacheSever"
  }
}