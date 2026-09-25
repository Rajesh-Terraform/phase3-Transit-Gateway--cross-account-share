variable "name" {
  type        = string
  description = "Transit Gateway name"
}

variable "description" {
  type        = string
  description = "Transit Gateway description"
  default     = "Phase 3 Hub-Spoke Transit Gateway"
}

variable "amazon_side_asn" {
  type        = number
  description = "Amazon side ASN"
  default     = 64512
}

variable "tags" {
  type        = map(string)
  description = "Transit Gateway tags"
  default     = {}
}  