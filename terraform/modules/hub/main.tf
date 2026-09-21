resource "aws_ec2_transit_gateway" "this" {
  description = "Hub Transit Gateway"

  tags = {
    Name = "hub-tgw"
  }
}

module "ram" {
  source = "../modules/ram"

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  spoke_account_id   = var.spoke_account_id
} 