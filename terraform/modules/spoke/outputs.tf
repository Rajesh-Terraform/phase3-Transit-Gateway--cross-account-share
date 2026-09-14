output "attachment_id" {
  description = "Spoke TGW VPC attachment ID"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.id
}

output "attachment_state" {
  description = "Spoke TGW attachment state"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.state
}