variable "aws_region" {
  type    = string
  default = "ap-south-1"
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

variable "transit_gateway_id" {
  type = string
}

variable "spoke_vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "hub_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "ram_resource_share_arn" {
  type    = string
  default = ""
}

variable "accept_ram_invitation" {
  type    = bool
  default = false
}  