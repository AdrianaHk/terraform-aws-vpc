data "aws_route_table" "main" {
  subnets_id = var.public_subnets_id[*]
}

resource "aws_route" "route" {
  route_table_id            = data.aws_route_table.main.id
  destination_cidr_block    = ["0.0.0.0/0"]
}

data "aws_route_table" "main-private" {
  subnets_id = var.private_subnets_id[*]
}

resource "aws_route" "private_nat_gateway" {
  route_table_id         = "${aws_route_table.private.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.main-private.id}"
}