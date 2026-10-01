resource "aws_ram_resource_share" "this" {
  name                      = var.name
  allow_external_principals = var.allow_external_principals

  tags = var.tags
}

resource "aws_ram_resource_association" "tgw" {
  resource_share_arn = aws_ram_resource_share.this.arn
  resource_arn       = var.resource_arn
}

resource "aws_ram_principal_association" "spoke" {
  resource_share_arn = aws_ram_resource_share.this.arn
  principal          = var.spoke_account_id
}  