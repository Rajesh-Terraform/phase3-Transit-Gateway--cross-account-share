variable "aws_region" {
  description = "AWS region for Hub account"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "tgw_name" {
  description = "Transit Gateway name"
  type        = string
}

variable "tgw_description" {
  description = "Transit Gateway description"
  type        = string
}

variable "amazon_side_asn" {
  description = "Amazon side ASN"
  type        = number
}

variable "ram_share_name" {
  description = "RAM resource share name"
  type        = string
}

variable "spoke_account_id" {
  description = "AWS account ID of Spoke account"
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.spoke_account_id))
    error_message = "spoke_account_id must be exactly 12 digits."
  }
}

variable "hub_vpc_id" {
  description = "Hub VPC ID"
  type        = string
}

variable "hub_private_subnet_ids" {
  description = "Private subnet IDs in Hub VPC for TGW attachment"
  type        = list(string)

  validation {
    condition     = length(var.hub_private_subnet_ids) >= 1
    error_message = "At least one Hub private subnet ID is required."
  }
}  