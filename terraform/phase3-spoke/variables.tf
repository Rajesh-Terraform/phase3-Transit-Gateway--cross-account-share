variable "transit_gateway_id" {
  description = "Hub Transit Gateway ID"
  type        = string
}

variable "vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Private subnet IDs for TGW attachment"
  type        = list(string)
}

variable "ram_share_name" {
  description = "RAM share name created by Hub"
  type        = string
  default     = "phase3-tgw-share"
}   