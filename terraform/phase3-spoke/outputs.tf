output "spoke_attachment_id" {
  description = "Spoke TGW attachment ID"
  value       = module.spoke_attachment.attachment_id
}

output "spoke_attachment_state" {
  description = "Spoke TGW attachment state"
  value       = module.spoke_attachment.attachment_state
}