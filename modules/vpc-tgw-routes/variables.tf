variable "route_table_ids" {
  type = list(string)
}

variable "destination_cidr" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}
