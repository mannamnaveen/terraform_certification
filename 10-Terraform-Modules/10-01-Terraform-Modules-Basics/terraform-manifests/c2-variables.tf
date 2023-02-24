# Input Variables

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "instance_count" {
  description = "Instance Count"
  type        = number
  default     = 1
}