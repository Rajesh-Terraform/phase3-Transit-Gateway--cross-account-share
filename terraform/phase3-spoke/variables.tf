variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "transit_gateway_id" {
  description = "Shared Transit Gateway ID"
  type        = string
}

variable "spoke_vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "spoke_subnet_ids" {
  description = "Spoke private subnet IDs used for TGW attachment"
  type        = list(string)
}

variable "attachment_name" {
  description = "Spoke TGW attachment name"
  type        = string
  default     = "spoke-tgw-attachment"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    Environment = "practice"
    Project     = "network"
  }
}