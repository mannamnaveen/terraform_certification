# Create 4 IAM Users
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "users" {

  for_each = toset(["Jack", "James", "Hannah", "Ethan"])
  name     = each.key

  tags = {
    name = each.key
  }
}
