variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ram_resource_share_arn" {
  description = "RAM resource share ARN created by Hub"
  type        = string
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID from Hub"
  type        = string
}

variable "vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Spoke subnet IDs used for TGW attachment"
  type        = list(string)
}

variable "route_table_ids" {
  description = "Spoke VPC route table IDs"
  type        = list(string)
}

variable "hub_vpc_cidr" {
  description = "Hub VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}   