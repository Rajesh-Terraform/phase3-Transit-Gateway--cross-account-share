resource "aws_ec2_transit_gateway" "this" {
  description = var.name

  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  dns_support = "enable"

  tags = {
    Name = var.name
  }
}

resource "aws_ec2_transit_gateway_route_table" "hub" {
  transit_gateway_id = aws_ec2_transit_gateway.this.id

  tags = {
    Name = "phase3-tgw-hub-route-table"
  }
}

resource "aws_ec2_transit_gateway_route_table" "spoke" {
  transit_gateway_id = aws_ec2_transit_gateway.this.id

  tags = {
    Name = "phase3-tgw-spoke-route-table"
  }
}