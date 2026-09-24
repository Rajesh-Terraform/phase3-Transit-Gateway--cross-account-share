variable "name" {
  type = string
}

variable "transit_gateway_arn" {
  type = string
}

variable "spoke_account_id" {
  type = string
}

variable "allow_external_principals" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}  