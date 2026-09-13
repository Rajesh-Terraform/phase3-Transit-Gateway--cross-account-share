variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "hub_account_id" {
  type = string
}

variable "hub_role_arn" {
  type = string
}

variable "spoke_account_id" {
  type    = string
  default = "434097521299"
}

variable "spoke_role_arn" {
  type = string
}

variable "hub_vpc_id" {
  type = string
}

variable "hub_vpc_cidr" {
  type = string
}

variable "hub_subnet_ids" {
  type = list(string)
}

variable "spoke_vpc_id" {
  type    = string
  default = ""
}

variable "spoke_vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "spoke_subnet_ids" {
  type = list(string)
}

variable "hub_route_table_ids" {
  type = list(string)
}

variable "spoke_route_table_ids" {
  type = list(string)
}