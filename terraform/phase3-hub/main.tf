module "tgw" {
  source = "../modules/tgw"

  name = "phase3-hub-tgw"
}

module "ram" {
  source = "../modules/ram"

  name = "phase3-tgw-share"

  transit_gateway_arn = module.tgw.transit_gateway_arn

  spoke_account_id = var.spoke_account_id
}

module "hub_attachment" {
  source = "../modules/tgw-attachment"

  name = "phase3-hub-tgw-attachment"

  transit_gateway_id = module.tgw.transit_gateway_id

  vpc_id = var.hub_vpc_id

  subnet_ids = var.hub_private_subnet_ids
} 