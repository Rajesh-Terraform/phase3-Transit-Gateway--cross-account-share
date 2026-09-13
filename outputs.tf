output "transit_gateway_id" {
  value = module.transit_gateway.transit_gateway_id
}

output "hub_tgw_route_table_id" {
  value = module.transit_gateway.hub_route_table_id
}

output "spoke_tgw_route_table_id" {
  value = module.transit_gateway.spoke_route_table_id
}

output "hub_attachment_id" {
  value = module.hub_attachment.attachment_id
}

output "spoke_attachment_id" {
  value = module.spoke_attachment.attachment_id
}

output "ram_share_arn" {
  value = module.ram.resource_share_arn
}