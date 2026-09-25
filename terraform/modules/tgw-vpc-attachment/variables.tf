variable "name" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets used for the TGW attachment"
}

variable "tags" {
  type    = map(string)
  default = {}
}  