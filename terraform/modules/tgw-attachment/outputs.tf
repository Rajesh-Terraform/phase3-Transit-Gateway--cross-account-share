output "attachment_id" {
  description = "Transit Gateway VPC attachment ID"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.id
}

output "attachment_arn" {
  description = "Transit Gateway VPC attachment ARN"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.arn
}

output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.transit_gateway_id
}

output "vpc_id" {
  description = "VPC ID attached to the Transit Gateway"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.vpc_id
}   