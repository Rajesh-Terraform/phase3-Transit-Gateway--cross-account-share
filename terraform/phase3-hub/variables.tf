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
  description = "Amazon side ASN for Transit Gateway"
  type        = number
  default     = 64512
}

variable "ram_share_name" {
  description = "AWS RAM share name"
  type        = string
}

variable "spoke_account_id" {
  description = "AWS Account ID of spoke account"
  type        = string
}  

