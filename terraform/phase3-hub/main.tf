module "tgw" {
  source = "../../modules/transit-gateway"

  amazon_side_asn = var.amazon_side_asn
}

module "ram" {
  source = "../../modules/ram-share"

  ram_name                  = var.ram_name
  transit_gateway_arn       = module.tgw.transit_gateway_arn
  spoke_account_id          = var.spoke_account_id
  allow_external_principals = true
}  