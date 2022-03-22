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