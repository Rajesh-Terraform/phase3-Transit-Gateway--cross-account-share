module "spoke_vpc_route" {
  source = "./modules/vpc-route"

  route_table_id         = var.spoke_route_table_id
  destination_cidr_block = var.hub_vpc_cidr
  transit_gateway_id     = var.transit_gateway_id
} 
