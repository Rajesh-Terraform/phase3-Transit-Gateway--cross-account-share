variable "ram_share_name" {
  description = "RAM resource share name"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.spoke_account_id))
    error_message = "spoke_account_id must be exactly 12 digits."
  }
}

variable "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  type        = string
}