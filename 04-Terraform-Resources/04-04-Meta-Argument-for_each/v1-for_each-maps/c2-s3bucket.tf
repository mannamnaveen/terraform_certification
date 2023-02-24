resource "aws_s3_bucket" "mys3bucket" {

  # For each meta argument
  for_each = {
    "dev" = "sandbox-dapp-bucket"
    "qa"  = "sandbox-qapp-bucket"
    "uat" = "sandbox-uapp-bucket"
    "prd" = "sandbox-papp-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {
    Environment = each.key
    BucketName  = "${each.key}-${each.value}"
    EachValue   = each.value
  }
}

# resource "aws_s3_bucket_acl" "mys3bucket_acl" {

#   for_each = {
#     "dev" = "my-dapp-bucket"
#     "qa"  = "my-qapp-bucket"
#     "uat" = "my-uapp-bucket"
#     "prd" = "my-papp-bucket"
#   }
#   bucket = aws_s3_bucket."${each.key}-${each.value}"[each.key]
#   acl    = "private"
# }