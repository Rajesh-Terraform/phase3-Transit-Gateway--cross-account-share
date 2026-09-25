output "spoke_attachment_id" {
  description = "Spoke TGW VPC attachment ID"
  value       = module.tgw_attachment.attachment_id
}

output "spoke_attachment_arn" {
  description = "Spoke TGW VPC attachment ARN"
  value       = module.tgw_attachment.attachment_arn
}

output "spoke_tgw_route_table_id" {
  description = "Spoke TGW route table ID"
  value       = module.spoke_route_table.route_table_id
}  