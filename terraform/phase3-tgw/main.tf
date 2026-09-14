resource "aws_ec2_transit_gateway" "this" {
  description = "Transit Gateway for Hub and Spoke connectivity"

  amazon_side_asn                 = 64512
  auto_accept_shared_attachments = "disable"

  default_route_table_association = "enable"
  default_route_table_propagation = "enable"

  dns_support  = "enable"
  vpn_ecmp_support = "enable"

  tags = merge(
    var.tags,
    {
      Name = var.tgw_name
    }
  )
}