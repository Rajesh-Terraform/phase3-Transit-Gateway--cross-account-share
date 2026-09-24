resource "aws_ec2_transit_gateway_vpc_attachment" "this" {
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids

  dns_support = "enable"

  ipv6_support = "disable"

  appliance_mode_support = "disable"

  tags = {
    Name    = "phase3-hub-tgw-attachment"
    Project = "phase3-tgw"
  }
}   