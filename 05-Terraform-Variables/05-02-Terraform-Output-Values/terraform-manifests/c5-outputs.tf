output "ec2_public_ip" {
  value = aws_instance.my-ec2-vm.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.my-ec2-vm.private_ip
}

output "security_groups" {
  value = aws_instance.my-ec2-vm.security_groups
}

output "public_dns_url" {
  value = "https://${aws_instance.my-ec2-vm.public_dns}"
}