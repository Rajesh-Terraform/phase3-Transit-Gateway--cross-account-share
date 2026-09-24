variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "Phase 3 Transit Gateway"
}

variable "amazon_side_asn" {
  type    = number
  default = 64512
}

variable "tags" {
  type    = map(string)
  default = {}
}  