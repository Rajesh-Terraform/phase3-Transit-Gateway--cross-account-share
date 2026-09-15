output "spoke_attachment_id" {
  description = "Spoke Transit Gateway VPC attachment ID"
  value       = module.spoke_attachment.attachment_id
}

output "spoke_attachment_state" {
  description = "Spoke Transit Gateway VPC attachment state"
  value       = module.spoke_attachment.attachment_state
}  