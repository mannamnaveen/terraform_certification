resource "aws_eip" "my_eip" {
  instance = aws_instance.web.id
  vpc      = true

  depends_on = [
    aws_internet_gateway.gw
  ]
}
