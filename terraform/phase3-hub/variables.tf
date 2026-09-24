variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}


variable "hub_vpc_id" {
  description = "Existing Hub VPC ID"
  type        = string
}


variable "hub_private_subnet_ids" {
  description = "Private subnet IDs for TGW attachment"
  type        = list(string)
}


variable "hub_route_table_ids" {
  description = "Hub VPC route table IDs"
  type        = list(string)
}


variable "hub_vpc_cidr" {
  description = "Hub VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}


variable "spoke_vpc_cidr" {
  description = "Spoke VPC CIDR"
  type        = string
  default     = "10.1.0.0/16"
}


variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}  