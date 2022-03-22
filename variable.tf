variable "cidr_block" {}
variable "tags" {
    type = map
}

variable "private_subnets_cidr" {
    type = list
}

variable "public_subnets_cidr" {
    type = list
}
variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}
variable "create_internet_gateway_route" {
  description = "Controls if an internet gateway route for public access is set"
  type        = bool
  default     = true
}

variable "nat_gateway_destination_cidr_block" {
  description = "Used to pass a custom destination route for private NAT Gateway. If not specified, the default 0.0.0.0/0 is used as a destination route."
  type        = string
  default     = "0.0.0.0/0"
}