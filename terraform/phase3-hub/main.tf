module "tgw" {
  source = "./modules/transit-gateway"

  vpc_id     = var.hub_vpc_id
  subnet_ids = var.hub_private_subnet_ids
}

module "ram" {
  source = "./modules/ram-share"

  transit_gateway_arn = module.tgw.transit_gateway_arn
  spoke_account_id    = var.spoke_account_id
}  