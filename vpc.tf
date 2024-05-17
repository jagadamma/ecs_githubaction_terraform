resource "aws_vpc" "main" {
  cidr_block             = var.vpc_cidr_block
  enable_dns_hostnames   = true
}

resource "aws_subnet" "subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_a_cidr_block
  availability_zone = "us-east-2a"

  tags = {
    Name = "subnet-a"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_b_cidr_block
  availability_zone = "us-east-2b"

  tags = {
    Name = "subnet-b"
  }
}
