variable "ec2_ami_id" {
  description = "The Amazon AMI 2 ID"
  type        = string
  default     = "ami-0dfcb1ef8550277af"
}

variable "ec2_instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 1
}

variable "aws_region" {
  description = "Default AWS region"
  type        = string
  default     = "us-east-1"
}