module "spoke_tgw_attachment" {
  source = "../modules/phase3-tgw-attachment"

  transit_gateway_id = var.transit_gateway_id
}   