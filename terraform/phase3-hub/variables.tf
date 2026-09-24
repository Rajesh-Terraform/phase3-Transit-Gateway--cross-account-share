variable "aws_region" {
  type = string
}

variable "project_name" {
  type = string
}

variable "tgw_name" {
  type = string
}

variable "tgw_description" {
  type = string
}

variable "amazon_side_asn" {
  type = number
}

variable "ram_share_name" {
  type = string
}

variable "spoke_account_id" {
  type = string
}

variable "hub_vpc_id" {
  type = string
}

variable "hub_private_subnet_ids" {
  type = list(string)
}

variable "hub_cidr" {
  type = string
}

variable "spoke_cidr" {
  type = string
}

variable "spoke_attachment_id" {
  type    = string
  default = ""
}  