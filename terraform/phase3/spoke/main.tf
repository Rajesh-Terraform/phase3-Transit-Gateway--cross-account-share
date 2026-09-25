module "ram" {
  source = "../../modules/ram-share"

  ram_resource_share_arn = var.ram_resource_share_arn
}


module "tgw_attachment" {
  source = "../../modules/tgw-vpc-attachment"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids

  depends_on = [
    module.ram
  ]
}


module "spoke_route_table" {
  source = "../../modules/tgw-route-table"

  transit_gateway_id = var.transit_gateway_id

  tags = {
    Name        = "phase3-spoke-tgw-route-table"
    Environment = "phase3"
    Account     = "spoke"
    Segment     = "spoke"
  }

  depends_on = [
    module.tgw_attachment
  ]
}


module "spoke_vpc_route" {
  source = "../../modules/vpc-tgw-routes"

  transit_gateway_id     = var.transit_gateway_id
  route_table_ids        = var.route_table_ids
  destination_cidr_block = var.hub_vpc_cidr

  depends_on = [
    module.tgw_attachment
  ]
}    