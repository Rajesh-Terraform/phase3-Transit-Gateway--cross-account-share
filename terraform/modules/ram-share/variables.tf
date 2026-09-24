variable "name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "transit_gateway_id" {
  type = string
}

variable "spoke_account_id" {
  type = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.spoke_account_id))
    error_message = "spoke_account_id must be a 12-digit AWS account ID."
  }
}  