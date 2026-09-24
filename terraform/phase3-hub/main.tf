module "tgw" {
  source = "../modules/tgw"

  tgw_name        = var.tgw_name
  tgw_description = var.tgw_description
  amazon_side_asn = var.amazon_side_asn
}


module "hub_attachment" {
  source = "../modules/tgw-attachment"

  transit_gateway_id = module.tgw.transit_gateway_id
  vpc_id             = var.hub_vpc_id
  subnet_ids         = var.hub_private_subnet_ids
}


module "ram" {
  source = "../modules/ram-share"

  ram_share_name     = var.ram_share_name
  spoke_account_id   = var.spoke_account_id
  transit_gateway_arn = module.tgw.transit_gateway_arn
}  