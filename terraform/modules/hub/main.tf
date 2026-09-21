resource "aws_ec2_transit_gateway" "this" {
  description = "Hub Transit Gateway"

  tags = {
    Name = "hub-tgw"
  }
}  