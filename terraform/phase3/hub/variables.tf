variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "tgw_name" {
  type    = string
  default = "phase3-hub-tgw"
}

variable "amazon_side_asn" {
  type    = number
  default = 64512
}

variable "ram_name" {
  type    = string
  default = "phase3-hub-to-spoke"
}

variable "spoke_account_id" {
  type    = string
  default = "434097521299"
}

variable "hub_vpc_id" {
  type = string
}

variable "hub_tgw_subnet_ids" {
  type = list(string)
}

variable "hub_vpc_route_table_ids" {
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

variable "allow_external_principals" {
  type    = bool
  default = true
}  


variable "attachment_id" {
  type = string
}

variable "route_table_id" {
  type = string
}