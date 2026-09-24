module "vpc" {
  source = "../modules/vpc"

  vpc_cidr = var.vpc_cidr

  private_subnet_cidrs = var.private_subnet_cidrs

  availability_zones = var.availability_zones
} 