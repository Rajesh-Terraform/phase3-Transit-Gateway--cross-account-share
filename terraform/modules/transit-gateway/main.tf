resource "aws_ec2_transit_gateway" "this" {
  description = var.description

  amazon_side_asn = var.amazon_side_asn

  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  dns_support = "enable"

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
} 