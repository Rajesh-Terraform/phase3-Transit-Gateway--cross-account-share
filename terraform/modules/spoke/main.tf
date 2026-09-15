module "spoke_attachment" {
  source = "../spoke-attachment"

  # required variables
  # vpc_id             = var.vpc_id
  # transit_gateway_id = var.transit_gateway_id
}
