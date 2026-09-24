output "transit_gateway_id" {
  value = module.tgw.transit_gateway_id
}

output "transit_gateway_arn" {
  value = module.tgw.transit_gateway_arn
}

output "hub_attachment_id" {
  value = module.hub_attachment.attachment_id
}

output "ram_share_id" {
  value = module.ram.resource_share_id
}

output "ram_share_arn" {
  value = module.ram.resource_share_arn
} 