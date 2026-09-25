module "tgw" {
  source = "./modules/transit-gateway"

  name = var.tgw_name
}

module "ram" {
  source = "./modules/ram-share"

  name               = var.ram_share_name
  transit_gateway_id = module.tgw.transit_gateway_id
  spoke_account_id   = var.spoke_account_id
}  