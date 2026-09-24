variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "transit_gateway_id" {
  type = string
}

variable "spoke_vpc_id" {
  type = string
}

variable "spoke_private_subnet_ids" {
  type = list(string)
}  