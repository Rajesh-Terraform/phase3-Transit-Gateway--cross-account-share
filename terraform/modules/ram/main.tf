data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

resource "aws_ram_resource_share" "this" {
  name                      = "hub-tgw-share"
  allow_external_principals = true

  tags = {
    Name = "hub-tgw-share"
  }
}

resource "aws_ram_resource_association" "tgw" {
  resource_share_arn = aws_ram_resource_share.this.arn

  resource_arn = "arn:aws:ec2:${data.aws_region.current.id}:${data.aws_caller_identity.current.account_id}:transit-gateway/${var.transit_gateway_id}"
}

resource "aws_ram_principal_association" "spoke" {
  resource_share_arn = aws_ram_resource_share.this.arn
  principal          = var.spoke_account_id
} 