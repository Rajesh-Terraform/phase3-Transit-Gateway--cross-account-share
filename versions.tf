terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket = "harish-gaddam-bucket123"
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

  assume_role {
    role_arn = var.spoke_role_arn
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
