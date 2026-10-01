output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = module.tgw.transit_gateway_id
}

output "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  value       = module.tgw.transit_gateway_arn
}

output "ram_resource_share_arn" {
  description = "RAM resource share ARN"
  value       = module.ram.resource_share_arn
}  