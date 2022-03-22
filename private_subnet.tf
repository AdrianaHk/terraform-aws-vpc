resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnets_cidr[0]
}



resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnets_cidr[1]
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnets_cidr[2]
}