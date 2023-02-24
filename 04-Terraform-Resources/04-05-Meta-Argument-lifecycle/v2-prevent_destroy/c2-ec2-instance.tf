# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  #lifecycle {
  #  prevent_destroy = true # Default is false
  #}
}

