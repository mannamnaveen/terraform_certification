# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-instance" {
  ami = "ami-0557a15b87f6559cf"
  instance_type     = "t3.micro"
  # availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Web Server - 1"
  }
}
