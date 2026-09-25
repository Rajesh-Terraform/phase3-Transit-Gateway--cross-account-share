output "propagation_id" {
  value = aws_ec2_transit_gateway_route_table_propagation.this.id
}  




output "transit_gateway_id" {
  value = module.tgw.transit_gateway_id
}

output "transit_gateway_arn" {
  value = module.tgw.transit_gateway_arn
}

output "ram_resource_share_arn" {
  value = module.ram.resource_share_arn
}

output "hub_attachment_id" {
  value = module.hub_attachment.attachment_id
}

output "hub_route_table_id" {
  value = module.hub_route_table.route_table_id
}