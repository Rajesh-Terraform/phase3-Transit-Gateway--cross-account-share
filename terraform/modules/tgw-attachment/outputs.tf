output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = module.tgw.transit_gateway_id
}

output "hub_attachment_id" {
  description = "Hub VPC Transit Gateway attachment ID"
  value       = module.tgw.attachment_id
}  