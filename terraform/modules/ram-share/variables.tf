variable "name" {
  description = "RAM resource share name"
  type        = string
}

variable "allow_external_principals" {
  description = "Allow external AWS accounts"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for RAM resource share"
  type        = map(string)
  default     = {}
}  