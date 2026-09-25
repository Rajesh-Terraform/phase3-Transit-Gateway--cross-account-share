module "tgw" {
  source = "../../modules/transit-gateway"

  amazon_side_asn = var.amazon_side_asn
}

module "ram" {
  source = "../../modules/ram-share"

  name                      = var.ram_name
  resource_arn              = module.tgw.transit_gateway_arn
  spoke_account_id          = var.spoke_account_id
  allow_external_principals = var.allow_external_principals

  tags = {
    Name  = var.ram_name
    Phase = "3"
  }
}  