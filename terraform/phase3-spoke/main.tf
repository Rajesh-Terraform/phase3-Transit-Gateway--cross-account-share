# Get the current AWS account
data "aws_caller_identity" "current" {}

# Get the current AWS region
data "aws_region" "current" {}

# Find the RAM resource share created by the Hub account
data "aws_ram_resource_share" "tgw" {
  name           = var.ram_share_name
  resource_owner = "OTHER-ACCOUNTS"
}

# Accept the RAM share
resource "aws_ram_resource_share_accepter" "tgw" {
  share_arn = data.aws_ram_resource_share.tgw.arn
}

# Create the VPC attachment to the Hub Transit Gateway
resource "aws_ec2_transit_gateway_vpc_attachment" "spoke" {
  transit_gateway_id = var.transit_gateway_id

  vpc_id = var.vpc_id

  subnet_ids = var.subnet_ids

  tags = {
    Name = "phase3-spoke-tgw-attachment"
  }

  depends_on = [
    aws_ram_resource_share_accepter.tgw
  ]
}   