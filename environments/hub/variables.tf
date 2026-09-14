variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "spoke_account_id" {
  type = string
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
  type = string
}

variable "spoke_vpc_cidr" {
  type = string
}

variable "spoke_state_bucket" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}   
