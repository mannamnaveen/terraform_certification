resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "Public-Subnet-1"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "myvpc-igw"
  }
}

resource "aws_route_table" "my_vpc_rt" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    "Name" = "myvpc-rt"
  }
}

resource "aws_route" "my_vpc_public_rt" {
  route_table_id         = aws_route_table.my_vpc_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "my_vpc_public_rt_association" {
  route_table_id = aws_route_table.my_vpc_rt.id
  subnet_id      = aws_subnet.public_subnet_1.id
}

resource "aws_security_group" "my_vpc_sg" {
  name        = "my_vpc_sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "myvpc_allow_ssh"
  }
}
