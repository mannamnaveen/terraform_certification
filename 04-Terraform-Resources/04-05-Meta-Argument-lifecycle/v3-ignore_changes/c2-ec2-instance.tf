# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-0557a15b87f6559cf" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-4"
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}

