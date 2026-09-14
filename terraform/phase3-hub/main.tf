data "aws_ec2_transit_gateway" "this" {
  id = var.transit_gateway_id
}

module "ram" {
  source = "../modules/ram"

  share_name        = var.share_name
  transit_gateway_arn = data.aws_ec2_transit_gateway.this.arn
  spoke_account_id  = var.spoke_account_id

  tags = var.tags
}