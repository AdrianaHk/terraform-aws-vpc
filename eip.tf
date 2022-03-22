resource “aws_eip” “nat” {
  count = 3
  vpc = true
}