variable "name" {
  description = "RAM resource share name"
  type        = string
}

variable "resource_arn" {
  description = "ARN of the Transit Gateway"
  type        = string
}

variable "principal" {
  description = "AWS account ID of the spoke account"
  type        = string
}  