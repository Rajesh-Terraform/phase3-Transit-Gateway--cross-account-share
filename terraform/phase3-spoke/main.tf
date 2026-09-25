terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Get the existing Transit Gateway
data "aws_ec2_transit_gateway" "tgw" {
  id = var.transit_gateway_id
}

# Spoke VPC
data "aws_vpc" "spoke" {
  id = var.spoke_vpc_id
}

# Spoke private subnets
data "aws_subnet" "spoke_private_1" {
  id = var.spoke_private_subnet_1_id
}

data "aws_subnet" "spoke_private_2" {
  id = var.spoke_private_subnet_2_id
}

# Attach Spoke VPC to existing TGW
resource "aws_ec2_transit_gateway_vpc_attachment" "spoke" {
  transit_gateway_id = data.aws_ec2_transit_gateway.tgw.id
  vpc_id             = data.aws_vpc.spoke.id

  subnet_ids = [
    data.aws_subnet.spoke_private_1.id,
    data.aws_subnet.spoke_private_2.id
  ]

  dns_support  = "enable"
  ipv6_support = "disable"

  tags = {
    Name = "spoke-tgw-attachment"
  }
}

output "transit_gateway_id" {
  value = data.aws_ec2_transit_gateway.tgw.id
}

output "spoke_attachment_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.spoke.id
}   