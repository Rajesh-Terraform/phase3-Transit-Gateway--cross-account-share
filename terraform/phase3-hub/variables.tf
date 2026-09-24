variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "hub_vpc_id" {
  description = "Hub VPC ID"
  type        = string
}

variable "hub_private_subnet_ids" {
  description = "Hub private subnet IDs for TGW attachment"
  type        = list(string)
}

variable "spoke_account_id" {
  description = "AWS Account ID of the Spoke account"
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.spoke_account_id))
    error_message = "spoke_account_id must be exactly 12 digits."
  }
}   