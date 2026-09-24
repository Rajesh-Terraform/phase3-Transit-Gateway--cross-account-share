variable "name" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}

variable "hub_attachment_id" {
  type = string
}

variable "spoke_attachment_id" {
  type = string
}

variable "hub_cidr" {
  type = string
}

variable "spoke_cidr" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}  