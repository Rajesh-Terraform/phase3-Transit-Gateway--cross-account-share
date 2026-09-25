module "tgw" {
  source = "../modules/transit-gateway"

  vpc_id     = var.hub_vpc_id
  subnet_ids = var.hub_private_subnet_ids
}  