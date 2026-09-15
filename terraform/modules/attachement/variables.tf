variable "transit_gateway_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}  