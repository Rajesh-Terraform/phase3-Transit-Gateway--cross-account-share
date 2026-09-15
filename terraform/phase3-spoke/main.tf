module "spoke_attachment" {
  source = "../modules/spoke"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.spoke_vpc_id
  subnet_ids         = var.spoke_subnet_ids
  name               = var.attachment_name

  tags = var.tags
}  