resource "aws_ec2_transit_gateway_route_table" "hub" {
  transit_gateway_id = var.transit_gateway_id

  tags = {
    Name      = "phase3-hub-tgw-rt"
    Type      = "Hub"
    ManagedBy = "Terraform"
  }
}

resource "aws_ec2_transit_gateway_route_table" "spoke" {
  transit_gateway_id = var.transit_gateway_id

  tags = {
    Name      = "phase3-spoke-tgw-rt"
    Type      = "Spoke"
    ManagedBy = "Terraform"
  }
}  