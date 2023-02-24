# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web-${count.index}"
  }
}
