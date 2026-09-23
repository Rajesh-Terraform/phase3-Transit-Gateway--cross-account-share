module "ram" {
  source = "../modules/ram"

  transit_gateway_id = var.transit_gateway_id
  share_name         = var.share_name
  spoke_account_id   = var.spoke_account_id
}  