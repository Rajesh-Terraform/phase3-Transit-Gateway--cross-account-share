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

module "tgw" {
  source = "../modules/transit-gateway"

  tgw_name        = var.tgw_name
  tgw_description = var.tgw_description
  amazon_side_asn = var.amazon_side_asn
}

module "ram" {
  source = "../modules/ram-share"

  ram_share_name  = var.ram_share_name
  tgw_arn         = module.tgw.transit_gateway_arn
  spoke_account_id = var.spoke_account_id
}  