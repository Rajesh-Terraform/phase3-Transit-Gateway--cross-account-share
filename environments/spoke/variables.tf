variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "transit_gateway_id" {
  type = string
}

variable "spoke_vpc_id" {
  type = string
}

variable "spoke_tgw_subnet_ids" {
  type = list(string)
}

variable "spoke_vpc_route_table_ids" {
  type = list(string)
}

variable "hub_vpc_cidr" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
