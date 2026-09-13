resource "aws_ec2_transit_gateway_route_table_association" "hub" {
  transit_gateway_attachment_id  = var.hub_attachment_id
  transit_gateway_route_table_id = var.hub_tgw_route_table_id
}

resource "aws_ec2_transit_gateway_route_table_association" "spoke" {
  transit_gateway_attachment_id  = var.spoke_attachment_id
  transit_gateway_route_table_id = var.spoke_tgw_route_table_id
}

resource "aws_ec2_transit_gateway_route" "hub_to_spoke" {
  destination_cidr_block         = var.spoke_vpc_cidr
  transit_gateway_route_table_id = var.hub_tgw_route_table_id
  transit_gateway_attachment_id  = var.spoke_attachment_id
}

resource "aws_ec2_transit_gateway_route" "spoke_to_hub" {
  destination_cidr_block         = var.hub_vpc_cidr
  transit_gateway_route_table_id = var.spoke_tgw_route_table_id
  transit_gateway_attachment_id  = var.hub_attachment_id
}

resource "aws_route" "hub_to_spoke" {
  for_each = toset(var.hub_route_table_ids)

  route_table_id         = each.value
  destination_cidr_block = var.spoke_vpc_cidr
  transit_gateway_id     = var.transit_gateway_id
}

resource "aws_route" "spoke_to_hub" {
  for_each = toset(var.spoke_route_table_ids)

  route_table_id         = each.value
  destination_cidr_block = var.hub_vpc_cidr
  transit_gateway_id     = var.transit_gateway_id
}

variable "transit_gateway_id" {
  type = string
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}



terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

      configuration_aliases = [
        aws.hub,
        aws.spoke
      ]
    }
  }
}