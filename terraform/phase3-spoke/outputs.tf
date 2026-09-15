output "spoke_vpc_id" {
  description = "Spoke VPC ID"
  value       = module.spoke.vpc_id
}

output "spoke_private_subnet_ids" {
  description = "Spoke private subnet IDs"
  value       = module.spoke.private_subnet_ids
}

output "spoke_attachment_id" {
  description = "Spoke Transit Gateway VPC attachment ID"
  value       = module.spoke_attachment.attachment_id
}