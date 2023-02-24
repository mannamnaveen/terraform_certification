# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0915bcb5fa77e4892" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}

/*
variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t3.micro", "t3.small", "t3.large"]
}
*/


variable "ec2_instance_tags" {
  description = "Tags for ec2 instances"
  type        = map(string)
  default = {
    "Name" = "ec2-web"
    "Tier" = "web"
  }
}

variable "ec2_instance_type_map" {
  description = "Instance types for the ec2"
  type        = map(string)
  default = {
    "dev" = "t3.micro"
    "uat" = "t3.medium"
    "prd" = "t3.large"
  }
}