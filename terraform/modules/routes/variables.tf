variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "routes" {
  description = "Routes to create"
  type = list(object({
    route_table_id  = string
    destination_cidr = string
  }))
}