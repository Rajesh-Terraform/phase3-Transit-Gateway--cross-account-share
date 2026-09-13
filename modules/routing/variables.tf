variable "hub_tgw_route_table_id" {
  type = string
}

variable "spoke_tgw_route_table_id" {
  type = string
}

variable "hub_attachment_id" {
  type = string
}

variable "spoke_attachment_id" {
  type = string
}

variable "hub_vpc_cidr" {
  type = string
}

variable "spoke_vpc_cidr" {
  type = string
}

variable "hub_route_table_ids" {
  type = list(string)
}

variable "spoke_route_table_ids" {
  type = list(string)
}