resource "aws_ram_resource_share" "this" {
  name                      = var.share_name
  allow_external_principals = true
}

resource "aws_ram_resource_association" "tgw" {
  resource_share_arn = aws_ram_resource_share.this.arn

  resource_arn = "arn:aws:ec2:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:transit-gateway/${var.transit_gateway_id}"
}

resource "aws_ram_principal_association" "spoke" {
  resource_share_arn = aws_ram_resource_share.this.arn
  principal          = var.spoke_account_id
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}  