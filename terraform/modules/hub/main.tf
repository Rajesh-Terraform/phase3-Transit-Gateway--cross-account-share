resource "aws_ec2_transit_gateway" "hub" {
  description = "Phase 3 Hub Transit Gateway"

  tags = {
    Name = "phase3-hub-tgw"
  }
}

module "ram" {
  source = "../modules/ram"

  transit_gateway_id = aws_ec2_transit_gateway.hub.id
  spoke_account_id   = var.spoke_account_id
} 