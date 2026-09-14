output "resource_share_id" {
  description = "RAM resource share ID"
  value       = module.ram.resource_share_id
}

output "resource_share_arn" {
  description = "RAM resource share ARN"
  value       = module.ram.resource_share_arn
}

output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = var.transit_gateway_id
}