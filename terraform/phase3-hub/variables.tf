variable "hub_vpc_id" {
  type = string
}

variable "hub_private_subnet_ids" {
  type = list(string)
}

variable "spoke_account_id" {
  type = string
}  