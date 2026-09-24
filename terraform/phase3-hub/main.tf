# ============================================================
# PHASE 3 - HUB ACCOUNT
# Transit Gateway + RAM Share + Hub VPC Attachment
# ============================================================


# ------------------------------------------------------------
# 1. Create Transit Gateway
# ------------------------------------------------------------

resource "aws_ec2_transit_gateway" "hub" {

  description = var.tgw_description

  amazon_side_asn = var.amazon_side_asn

  default_route_table_association = "disable"

  default_route_table_propagation = "disable"

  dns_support = "enable"

  vpn_ecmp_support = "enable"

  tags = {
    Name        = var.tgw_name
    Project     = var.project_name
    Environment = "hub"
  }
}


# ------------------------------------------------------------
# 2. Create TGW Route Table
# ------------------------------------------------------------

resource "aws_ec2_transit_gateway_route_table" "hub" {

  transit_gateway_id = aws_ec2_transit_gateway.hub.id

  tags = {
    Name    = "${var.tgw_name}-route-table"
    Project = var.project_name
  }
}


# ------------------------------------------------------------
# 3. Attach Hub VPC to Transit Gateway
# ------------------------------------------------------------

resource "aws_ec2_transit_gateway_vpc_attachment" "hub" {

  transit_gateway_id = aws_ec2_transit_gateway.hub.id

  vpc_id = var.hub_vpc_id

  subnet_ids = var.hub_private_subnet_ids

  dns_support = "enable"

  ipv6_support = "disable"

  transit_gateway_default_route_table_association = false

  transit_gateway_default_route_table_propagation = false

  tags = {
    Name    = "${var.tgw_name}-hub-attachment"
    Project = var.project_name
  }
}


# ------------------------------------------------------------
# 4. Associate Hub Attachment with TGW Route Table
# ------------------------------------------------------------

resource "aws_ec2_transit_gateway_route_table_association" "hub" {

  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.hub.id

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.hub.id

}


# ------------------------------------------------------------
# 5. Create AWS RAM Resource Share
# ------------------------------------------------------------

resource "aws_ram_resource_share" "tgw" {

  name = var.ram_share_name

  allow_external_principals = true

  tags = {
    Name    = var.ram_share_name
    Project = var.project_name
  }
}


# ------------------------------------------------------------
# 6. Share TGW through RAM
# ------------------------------------------------------------

resource "aws_ram_resource_association" "tgw" {

  resource_arn = aws_ec2_transit_gateway.hub.arn

  resource_share_arn = aws_ram_resource_share.tgw.arn

}


# ------------------------------------------------------------
# 7. Share TGW with Spoke AWS Account
# ------------------------------------------------------------

resource "aws_ram_principal_association" "spoke" {

  principal = var.spoke_account_id

  resource_share_arn = aws_ram_resource_share.tgw.arn

}  