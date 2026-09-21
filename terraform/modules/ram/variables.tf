variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
} 


resource "aws_ram_resource_share" "tgw" {
  name                      = "phase3-tgw-share"
  allow_external_principals = true
}

resource "aws_ram_resource_association" "tgw" {
  resource_arn = "arn:aws:ec2:ap-south-1:878962827886:transit-gateway/${var.transit_gateway_id}"

  resource_share_arn = aws_ram_resource_share.tgw.arn
}

resource "aws_ram_principal_association" "spoke" {
  principal          = var.spoke_account_id
  resource_share_arn = aws_ram_resource_share.tgw.arn
}