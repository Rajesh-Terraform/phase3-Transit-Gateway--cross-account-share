variable "amazon_side_asn" {
  type    = number
  default = 64512
}

variable "ram_name" {
  type    = string
  default = "phase3-tgw-share"
}

variable "spoke_account_id" {
  type = string
}

variable "allow_external_principals" {
  type    = bool
  default = true
}  