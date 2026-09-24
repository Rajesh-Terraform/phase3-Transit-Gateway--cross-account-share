module "tgw" {
  source = "../modules/transit-gateway"

  name            = "phase3-tgw"
  description     = "Phase 3 Cross Account Transit Gateway"
  amazon_side_asn = 64512
  environment     = "dev"
}


module "ram" {
  source = "../modules/ram-share"

  name = "phase3-tgw-share"

  transit_gateway_arn = module.tgw.transit_gateway_arn

  spoke_account_id = var.spoke_account_id

  allow_external_principals = true
}


module "hub_attachment" {
  source = "../modules/tgw-attachment"

  name = "phase3-hub-attachment"

  transit_gateway_id = module.tgw.transit_gateway_id

  vpc_id = var.hub_vpc_id

  subnet_ids = var.hub_private_subnet_ids
}   