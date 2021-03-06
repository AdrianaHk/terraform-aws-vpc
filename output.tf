output vpc_id {
    value = aws_vpc.main.id
}

output "private_nat_gateway_route_ids" {
  description = "List of IDs of the private nat gateway route"
  value       = aws_route.private_nat_gateway[*].id
}

output "public_subnets_id" {
   value = var.aws_subnet.public[*].public_id
}
