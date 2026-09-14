variable "transit_gateway_id" {
  description = "Transit Gateway ID"
  type        = string
}

variable "vpc_id" {
  description = "Spoke VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Spoke private subnet IDs"
  type        = list(string)
}

variable "name" {
  description = "Spoke attachment name"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}