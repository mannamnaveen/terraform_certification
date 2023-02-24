# S3 Bucket using locals
locals {
  # Defining a local name for the bucket
  bucket_name = "mialeev-${var.app_name}-${var.environment_name}-bucket"
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}