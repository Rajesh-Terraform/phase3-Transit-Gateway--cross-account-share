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
  description = "Transit Gateway Amazon side ASN"
  type        = number
}

variable "ram_share_name" {
  description = "RAM share name"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}

variable "hub_vpc_id" {
  description = "Hub VPC ID"
  type        = string
}

variable "hub_cidr" {
  description = "Hub VPC CIDR"
  type        = string
}

variable "spoke_cidr" {
  description = "Spoke VPC CIDR"
  type        = string
}  