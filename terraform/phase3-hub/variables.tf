variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "transit_gateway_id" {
  description = "Existing Transit Gateway ID"
  type        = string
}

variable "spoke_account_id" {
  description = "Spoke AWS account ID"
  type        = string
}

variable "share_name" {
  description = "RAM share name"
  type        = string
  default     = "hub-tgw-share"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    Environment = "practice"
    Project     = "network"
  }
}