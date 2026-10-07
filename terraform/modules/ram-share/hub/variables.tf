variable "tgw_name" {
  description = "Transit Gateway name"
  type        = string
  default     = "hub-tgw"
}

variable "ram_name" {
  description = "RAM resource share name"
  type        = string
  default     = "hub-tgw-share"
}

variable "allow_external_principals" {
  description = "Allow sharing with external AWS accounts"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}    