resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  enable_nat_gateway = true
  tags       = var.tags
}

