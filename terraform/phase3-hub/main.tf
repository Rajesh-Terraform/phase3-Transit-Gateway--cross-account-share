module "tgw" {
  source = "../modules/transit-gateway"

  name            = var.tgw_name
  description     = var.tgw_description
  amazon_side_asn = var.amazon_side_asn

  tags = {
    Project = var.project_name
    Phase   = "Phase3"
  }
}

module "ram" {
  source = "../modules/ram-share"

  name                       = var.ram_share_name
  transit_gateway_arn        = module.tgw.transit_gateway_arn
  spoke_account_id           = var.spoke_account_id
  allow_external_principals  = false

  tags = {
    Project = var.project_name
    Phase   = "Phase3"
  }
}

module "hub_attachment" {
  source = "../modules/tgw-attachment"

  name               = "phase3-hub-tgw-attachment"
  transit_gateway_id = module.tgw.transit_gateway_id
  vpc_id             = var.hub_vpc_id
  subnet_ids         = var.hub_private_subnet_ids

  tags = {
    Project = var.project_name
    Phase   = "Phase3"
  }
}  