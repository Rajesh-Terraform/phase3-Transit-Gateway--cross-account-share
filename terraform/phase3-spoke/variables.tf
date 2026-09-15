variable "vpc_cidr" {
  description = "Spoke VPC CIDR"
  type        = string
  default     = "10.1.0.0/16"
}

variable "vpc_name" {
  description = "Spoke VPC name"
  type        = string
  default     = "spoke-vpc"
}

variable "private_subnet_cidrs" {
  description = "Spoke private subnet CIDRs"
  type        = list(string)
  default     = [
    "10.1.1.0/24",
    "10.1.2.0/24"
  ]
}

variable "availability_zones" {
  description = "Availability zones for Spoke subnets"
  type        = list(string)
  default     = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "attachment_name" {
  description = "TGW attachment name"
  type        = string
  default     = "spoke-tgw-attachment"
}

variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {}
}