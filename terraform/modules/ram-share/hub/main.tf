```hcl
module "tgw" {
  source = "../../modules/transit-gateway"

  name = var.tgw_name
}

module "ram" {
  source = "../../modules/ram-share"

  name         = var.ram_name
  resource_arn = module.tgw.transit_gateway_arn
  principal    = var.spoke_account_id
}

 