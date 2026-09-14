module "tgw" {
  source = "../../modules/tgw"

  name = "prod-enterprise-tgw"

  description = "Production enterprise Transit Gateway"

  amazon_side_asn = 64512

  tags = var.tags
}

module "ram" {
  source = "../../modules/tgw-ram"

  name = "prod-tgw-share"

  tgw_arn = module.tgw.tgw_arn

  spoke_account_id = var.spoke_account_id

  # Same AWS Organization = false
  # Standalone external account = true
  allow_external_principals = false

  tags = var.tags
}

module "hub_attachment" {
  source = "../../modules/tgw-vpc-attachment"

  name = "prod-hub-vpc-tgw-attachment"

  transit_gateway_id = module.tgw.tgw_id

  vpc_id = var.hub_vpc_id

  subnet_ids = var.hub_tgw_subnet_ids

  tags = var.tags

  depends_on = [
    module.tgw
  ]
}

module "hub_route_table" {
  source = "../../modules/tgw-route-table"

  name = "prod-hub-tgw-route-table"

  transit_gateway_id = module.tgw.tgw_id

  tags = var.tags
}

module "spoke_route_table" {
  source = "../../modules/tgw-route-table"

  name = "prod-spoke-tgw-route-table"

  transit_gateway_id = module.tgw.tgw_id

  tags = var.tags
}
    