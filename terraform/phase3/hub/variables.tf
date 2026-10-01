variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "amazon_side_asn" {
  description = "Amazon side ASN for Transit Gateway"
  type        = number
}

variable "ram_name" {
  description = "RAM resource share name"
  type        = string
}

variable "spoke_account_id" {
  description = "AWS account ID of the spoke account"
  type        = string
}

variable "allow_external_principals" {
  description = "Allow external principals in RAM share"
  type        = bool
}  