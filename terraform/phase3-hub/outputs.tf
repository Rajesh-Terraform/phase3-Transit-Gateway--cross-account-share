output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = module.tgw.transit_gateway_id
}


output "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  value       = module.tgw.transit_gateway_arn
}


output "ram_share_arn" {
  description = "RAM resource share ARN"
  value       = module.ram.share_arn
}


output "hub_attachment_id" {
  description = "Hub VPC TGW attachment ID"
  value       = module.hub_attachment.attachment_id
}  