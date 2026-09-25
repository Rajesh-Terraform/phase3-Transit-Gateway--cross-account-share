variable "name" {
  description = "RAM share name"
  type        = string
}

variable "resource_arn" {
  description = "Transit Gateway ARN"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}

variable "allow_external_principals" {
  description = "Allow external principals"
  type        = bool
  default     = true
}

variable "tags" {
  description = "RAM share tags"
  type        = map(string)
  default     = {}
}   