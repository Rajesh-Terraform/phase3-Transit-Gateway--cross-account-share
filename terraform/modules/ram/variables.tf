variable "share_name" {
  description = "RAM resource share name"
  type        = string
}

variable "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}