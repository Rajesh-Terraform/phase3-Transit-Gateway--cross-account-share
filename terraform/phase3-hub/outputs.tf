output "transit_gateway_id" {
  description = "Hub Transit Gateway ID"
  value       = module.tgw.transit_gateway_id
}

output "transit_gateway_arn" {
  description = "Hub Transit Gateway ARN"
  value       = module.tgw.transit_gateway_arn
}

output "hub_attachment_id" {
  description = "Hub VPC Transit Gateway attachment ID"
  value       = module.hub_attachment.attachment_id
}

output "ram_share_id" {
  description = "RAM resource share ID"
  value       = module.ram.resource_share_id
}

output "ram_share_arn" {
  description = "RAM resource share ARN"
  value       = module.ram.resource_share_arn
}   