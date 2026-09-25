variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "spoke_vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "spoke_subnet_1_id" {
  description = "First Spoke private subnet ID"
  type        = string
}

variable "spoke_subnet_2_id" {
  description = "Second Spoke private subnet ID"
  type        = string
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID shared from Hub account"
  type        = string
}   