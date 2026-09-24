variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "hub_vpc_id" {
  description = "Hub VPC ID"
  type        = string
}

variable "hub_private_subnet_ids" {
  description = "Private subnet IDs used for Hub TGW attachment"
  type        = list(string)

  validation {
    condition     = length(var.hub_private_subnet_ids) >= 2
    error_message = "Provide at least two Hub private subnet IDs."
  }
}

variable "spoke_account_id" {
  description = "AWS Account ID of the Spoke account"
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.spoke_account_id))
    error_message = "spoke_account_id must be a 12-digit AWS account ID."
  }
}  