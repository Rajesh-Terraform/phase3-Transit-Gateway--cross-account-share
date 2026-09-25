resource "aws_ec2_transit_gateway" "this" {
  description                     = var.tgw_description
  amazon_side_asn                 = var.amazon_side_asn
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name    = var.tgw_name
    Project = "phase3-tgw"
  }
}  