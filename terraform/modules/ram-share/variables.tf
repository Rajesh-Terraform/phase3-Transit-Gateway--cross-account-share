variable "name" {
  type = string
}

variable "resource_arn" {
  type = string
}

variable "spoke_account_id" {
  type = string
}

variable "allow_external_principals" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
} 