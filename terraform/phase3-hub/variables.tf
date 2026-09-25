variable "aws_region" {
  description = "AWS region"
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
  default     = 64512
}

variable "ram_share_name" {
  description = "RAM resource share name"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
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
  description = "Hub private subnet IDs"
  type        = list(string)
}   