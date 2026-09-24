variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "transit_gateway_id" {
  type = string
}

variable "spoke_vpc_id" {
  type = string
}

variable "spoke_private_subnet_ids" {
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

variable "spoke_route_table_ids" {
  type = list(string)
}  