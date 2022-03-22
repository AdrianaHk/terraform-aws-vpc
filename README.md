# Terraform AWS VPC Module

### Usage:
```
module "vpc"{
    source = "AdrianaHk/vpc/aws"
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "Dev"
    }
}
```