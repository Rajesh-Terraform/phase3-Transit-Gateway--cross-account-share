

resource "aws_ram_resource_share_accepter" "this" {
  count = var.accept_ram_invitation && var.ram_resource_share_arn != "" ? 1 : 0

  share_arn = var.ram_resource_share_arn
}


module "spoke_attachment" {
  source = "../../modules/tgw-vpc-attachment"

  name               = "phase3-spoke-vpc-attachment"
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.spoke_vpc_id
  subnet_ids         = var.spoke_tgw_subnet_ids

  tags = {
    Environment = "phase3"
    Account     = "spoke"
  }

  depends_on = [
    aws_ram_resource_share_accepter.this
  ]
}


module "spoke_route_table" {
  source = "../../modules/tgw-route-table"

  name               = "phase3-spoke-tgw-route-table"
  transit_gateway_id = var.transit_gateway_id
  attachment_id      = module.spoke_attachment.attachment_id

  tags = {
    Environment = "phase3"
    Account     = "spoke"
    Segment     = "spoke"
  }
}


module "spoke_vpc_route" {
  source = "../../modules/vpc-tgw-routes"

  route_table_ids     = var.spoke_vpc_route_table_ids
  destination_cidr    = var.hub_vpc_cidr
  transit_gateway_id = var.transit_gateway_id
}


output "spoke_attachment_id" {
  value = module.spoke_attachment.attachment_id
} 