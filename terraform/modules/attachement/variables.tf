variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID to attach to Transit Gateway"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for Transit Gateway attachment"
  type        = list(string)
}

variable "name" {
  description = "TGW attachment name"
  type        = string
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}  