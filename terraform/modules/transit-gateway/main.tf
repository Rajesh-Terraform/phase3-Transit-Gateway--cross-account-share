resource "aws_ec2_transit_gateway" "this" {
  description = "Phase 3 Hub-Spoke Transit Gateway"

  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name        = "phase3-transit-gateway"
    Environment = "testing"
  }
}

