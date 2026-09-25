module "vpc_attachment" {
  source = "../modules/vpc-attachment"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
}   