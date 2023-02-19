# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = "~> 1.3.9"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default" # Defining it for default profile is Optional
  alias = "us-east-1"
}