variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "transit_gateway_id" {
  description = "Existing TGW created in the Hub account"
  type        = string
}

variable "spoke_vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "spoke_private_subnet_ids" {
  description = "Spoke private subnet IDs"
  type        = list(string)
}

variable "spoke_route_table_ids" {
  description = "Spoke route table IDs"
  type        = list(string)
}

variable "hub_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "spoke_vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}   