variable "name" {
  description = "RAM share name"
  type        = string
}

variable "resource_arn" {
  description = "ARN of the Transit Gateway"
  type        = string
}

variable "spoke_account_id" {
  description = "AWS account ID of the spoke account"
  type        = string
}

variable "allow_external_principals" {
  description = "Allow sharing with external AWS accounts"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for RAM resources"
  type        = map(string)
  default     = {}
}  