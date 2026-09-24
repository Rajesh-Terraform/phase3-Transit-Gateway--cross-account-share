variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "hub_vpc_id" {
  type = string
}

variable "hub_private_subnet_ids" {
  type = list(string)
}

variable "hub_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "spoke_vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "spoke_account_id" {
  type = string
}  