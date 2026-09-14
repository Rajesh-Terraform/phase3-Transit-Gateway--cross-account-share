variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "tgw_name" {
  description = "Transit Gateway name"
  type        = string
  default     = "hub-tgw"
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    Environment = "practice"
    Project     = "network"
  }
}