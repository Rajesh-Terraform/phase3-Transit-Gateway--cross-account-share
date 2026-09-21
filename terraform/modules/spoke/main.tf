module "spoke_attachment" {
  source = "../modules/attachement"

  transit_gateway_id = var.transit_gateway_id

  vpc_id = module.spoke_vpc.vpc_id

  subnet_ids = module.spoke_vpc.private_subnet_ids
} 