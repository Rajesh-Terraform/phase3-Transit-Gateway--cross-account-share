output "transit_gateway_attachment_id" {
  description = "Spoke TGW VPC attachment ID"
  value       = module.spoke_attachment.attachment_id
}

output "transit_gateway_id" {
  description = "Hub Transit Gateway ID"
  value       = var.transit_gateway_id
}

output "spoke_vpc_id" {
  description = "Spoke VPC ID"
  value       = var.spoke_vpc_id
}      