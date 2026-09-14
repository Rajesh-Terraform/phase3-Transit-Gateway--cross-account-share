variable "name" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
