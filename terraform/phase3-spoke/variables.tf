variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID from Hub account"
  type        = string

  validation {
    condition     = can(regex("^tgw-[a-z0-9]+$", var.transit_gateway_id))
    error_message = "Invalid Transit Gateway ID."
  }
}

variable "spoke_vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "spoke_private_subnet_ids" {
  description = "Spoke private subnet IDs"
  type        = list(string)
}

variable "attachment_name" {
  description = "TGW attachment name"
  type        = string
  default     = "spoke-tgw-attachment"
}   