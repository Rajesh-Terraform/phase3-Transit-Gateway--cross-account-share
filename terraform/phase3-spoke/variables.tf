variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "transit_gateway_id" {
  description = "Existing Transit Gateway ID created in Hub account"
  type        = string

  validation {
    condition     = length(trimspace(var.transit_gateway_id)) > 0
    error_message = "transit_gateway_id must not be empty."
  }
}

variable "spoke_vpc_id" {
  description = "Spoke VPC ID"
  type        = string

  validation {
    condition     = length(trimspace(var.spoke_vpc_id)) > 0
    error_message = "spoke_vpc_id must not be empty."
  }
}

variable "spoke_private_subnet_ids" {
  description = "Private subnet IDs in Spoke VPC"
  type        = list(string)

  validation {
    condition     = length(var.spoke_private_subnet_ids) >= 2
    error_message = "Provide at least two Spoke private subnet IDs."
  }
}  