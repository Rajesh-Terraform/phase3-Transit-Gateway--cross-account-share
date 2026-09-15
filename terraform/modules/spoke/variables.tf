variable "vpc_cidr" {
  description = "Spoke VPC CIDR"
  type        = string
}

variable "vpc_name" {
  description = "Spoke VPC name"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "Spoke private subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
} 