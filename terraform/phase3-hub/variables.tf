variable "amazon_side_asn" {
  description = "Amazon side ASN for Transit Gateway"
  type        = number
  default     = 64512
}

variable "ram_name" {
  description = "RAM share name"
  type        = string
}

variable "spoke_account_id" {
  description = "AWS account ID of spoke account"
  type        = string
} 