module "spoke" {
  source = "../modules/spoke"

  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "spoke_attachment" {
  source = "../modules/attachement"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = module.spoke.vpc_id
  subnet_ids         = module.spoke.private_subnet_ids
  name               = var.attachment_name
  tags               = var.tags
}