variable "vpc_cidr" {
  description = "CIDR block for the Spoke VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the Spoke VPC"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the Spoke private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the Spoke private subnets"
  type        = list(string)
}  