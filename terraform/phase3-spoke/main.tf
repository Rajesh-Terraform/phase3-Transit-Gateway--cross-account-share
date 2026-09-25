terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "spoke_tgw_attachment" {
  source = "../modules/tgw-attachment"

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.spoke_vpc_id
  subnet_ids         = var.spoke_private_subnet_ids

  attachment_name = var.attachment_name
}   