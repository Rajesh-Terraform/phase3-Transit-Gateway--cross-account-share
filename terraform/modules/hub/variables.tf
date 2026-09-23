variable "transit_gateway_id" {
  description = "Hub Transit Gateway ID"
  type        = string
}

variable "share_name" {
  description = "RAM resource share name"
  type        = string
  default     = "phase3-tgw-share"
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}  