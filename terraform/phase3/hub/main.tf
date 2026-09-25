module "tgw" {
  source = "../../modules/transit-gateway"

  name           = var.tgw_name
  amazon_side_asn = var.amazon_side_asn

  tags = {
    Environment = "phase3"
    Account     = "hub"
    Project     = "transit-gateway"
  }
}


module "ram" {
  source = "../../modules/ram-share"

  name                    = var.ram_name
  resource_arn            = module.tgw.transit_gateway_arn
  spoke_account_id        = var.spoke_account_id
  allow_external_principals = var.allow_external_principals

  tags = {
    Environment = "phase3"
    Account     = "hub"
  }
}


module "hub_attachment" {
  source = "../../modules/tgw-vpc-attachment"

  name               = "phase3-hub-vpc-attachment"
  transit_gateway_id = module.tgw.transit_gateway_id
  vpc_id             = var.hub_vpc_id
  subnet_ids         = var.hub_tgw_subnet_ids

  tags = {
    Environment = "phase3"
    Account     = "hub"
  }
}


module "hub_route_table" {
  source = "../../modules/tgw-route-table"

  name               = "phase3-hub-tgw-route-table"
  transit_gateway_id = module.tgw.transit_gateway_id
  attachment_id      = module.hub_attachment.attachment_id

  tags = {
    Environment = "phase3"
    Account     = "hub"
    Segment     = "hub"
  }
}


resource "aws_ec2_transit_gateway_route" "hub_to_spoke" {
  destination_cidr_block         = var.spoke_vpc_cidr
  transit_gateway_route_table_id = module.hub_route_table.route_table_id
  transit_gateway_attachment_id  = module.spoke_attachment_id
}


module "hub_vpc_route" {
  source = "../../modules/vpc-tgw-routes"

  route_table_ids     = var.hub_vpc_route_table_ids
  destination_cidr    = var.spoke_vpc_cidr
  transit_gateway_id  = module.tgw.transit_gateway_id
} 


module "spoke_propagation_to_hub" {
  source = "../../modules/tgw-propagation"

  attachment_id  = var.spoke_attachment_id
  route_table_id = module.hub_route_table.route_table_id
} 