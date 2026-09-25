output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = aws_ec2_transit_gateway.this.id
}

output "attachment_id" {
  description = "Hub VPC Transit Gateway attachment ID"
  value       = aws_ec2_transit_gateway_vpc_attachment.hub.id
} 