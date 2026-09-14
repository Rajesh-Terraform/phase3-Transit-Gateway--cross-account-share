resource "aws_ram_resource_share" "this" {
  name                      = var.share_name
  allow_external_principals = true

  tags = var.tags
}

resource "aws_ram_resource_association" "this" {
  resource_arn       = var.transit_gateway_arn
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_principal_association" "this" {
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}