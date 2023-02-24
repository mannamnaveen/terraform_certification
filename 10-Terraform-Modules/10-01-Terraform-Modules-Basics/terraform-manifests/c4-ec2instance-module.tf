module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "my-module-vm"

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "thefifty"
  monitoring             = true
  vpc_security_group_ids = ["sg-0c4eb86b900058582"]
  subnet_id              = "subnet-0753d7f3fc7c332e5"
  user_data              = file("apache-install.sh")

  tags = {
    Name        = "mymodules-demo"
    Terraform   = "true"
    Environment = "dev"
  }
}