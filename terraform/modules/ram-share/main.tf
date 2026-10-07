resource "aws_ram_resource_share" "this" {
  name                      = var.name
  allow_external_principals = true
}

resource "aws_ram_resource_association" "this" {
  resource_share_arn = aws_ram_resource_share.this.arn
  resource_arn       = var.resource_arn
}

resource "aws_ram_principal_association" "this" {
  resource_share_arn = aws_ram_resource_share.this.arn
  principal          = var.principal
}  