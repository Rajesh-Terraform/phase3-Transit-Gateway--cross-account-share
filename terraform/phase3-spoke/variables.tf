variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "transit_gateway_id" {
  type        = string
  description = "Existing Transit Gateway ID created in Hub account"

  validation {
    condition     = can(regex("^tgw-[a-z0-9]+$", var.transit_gateway_id))
    error_message = "transit_gateway_id must look like tgw-xxxxxxxx."
  }
}

variable "spoke_vpc_id" {
  type        = string
  description = "Existing Spoke VPC ID"
}

variable "spoke_private_subnet_1_id" {
  type        = string
  description = "Spoke private subnet 1 ID"
}

variable "spoke_private_subnet_2_id" {
  type        = string
  description = "Spoke private subnet 2 ID"
}   