variable "aws_region" {
  type = string
}

variable "project_name" {
  type = string
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

variable "hub_cidr" {
  type = string
}

variable "spoke_cidr" {
  type = string
}   