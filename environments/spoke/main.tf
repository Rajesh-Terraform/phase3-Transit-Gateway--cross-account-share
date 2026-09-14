module "spoke_attachment" {
  source = "../../modules/tgw-vpc-attachment"

  name = "prod-spoke-vpc-tgw-attachment"

  transit_gateway_id = var.transit_gateway_id

  vpc_id = var.spoke_vpc_id

  subnet_ids = var.spoke_tgw_subnet_ids

  tags = var.tags
}

module "spoke_routes_to_hub" {
  source = "../../modules/vpc-tgw-routes"

  route_table_ids = var.spoke_vpc_route_table_ids

  destination_cidr = var.hub_vpc_cidr

  transit_gateway_id = var.transit_gateway_id

  depends_on = [
    module.spoke_attachment
  ]
}
  