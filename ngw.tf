resource "aws_nat_gateway" "main" {
  connectivity_type = "private"
  subnet_id         = var.private_subnets_cidr[*]
}