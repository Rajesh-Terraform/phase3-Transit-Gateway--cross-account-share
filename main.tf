module "transit_gateway" {
  source = "./modules/transit-gateway"

  providers = {
    aws = aws.hub
  }

  name = "phase3-transit-gateway"
}

module "ram" {
  source = "./modules/ram"

  providers = {
    aws = aws.hub
  }

  transit_gateway_arn = module.transit_gateway.transit_gateway_arn
  spoke_account_id    = var.spoke_account_id
}

module "hub_attachment" {
  source = "./modules/hub-attachment"

  providers = {
    aws = aws.hub
  }

  transit_gateway_id = module.transit_gateway.transit_gateway_id
  vpc_id             = var.hub_vpc_id
  subnet_ids         = var.hub_subnet_ids
}

module "spoke_attachment" {
  source = "./modules/spoke-attachment"

  providers = {
    aws = aws.spoke
  }

  transit_gateway_id = module.transit_gateway.transit_gateway_id
  vpc_id             = var.spoke_vpc_id
  subnet_ids         = var.spoke_subnet_ids
}

module "routing" {
  source = "./modules/routing"

  providers = {
    aws = aws.hub
  }

  transit_gateway_id = module.transit_gateway.transit_gateway_id

  hub_tgw_route_table_id   = module.transit_gateway.hub_route_table_id
  spoke_tgw_route_table_id = module.transit_gateway.spoke_route_table_id

  hub_attachment_id   = module.hub_attachment.attachment_id
  spoke_attachment_id = module.spoke_attachment.attachment_id

  hub_vpc_cidr   = var.hub_vpc_cidr
  spoke_vpc_cidr = var.spoke_vpc_cidr

  hub_route_table_ids   = var.hub_route_table_ids
  spoke_route_table_ids = var.spoke_route_table_ids
}  




terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket = "phase3-transit-gateway-terraform-state-434097521299"
    key    = "phase3/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  alias  = "hub"
  region = var.aws_region

  assume_role {
    role_arn = var.hub_role_arn
  }
}

provider "aws" {
  alias  = "spoke"
  region = var.aws_region
}



