module "spoke_attachment" {
  source = "../modules/tgw-attachment"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.spoke_vpc_id
  subnet_ids         = var.spoke_private_subnet_ids
}  