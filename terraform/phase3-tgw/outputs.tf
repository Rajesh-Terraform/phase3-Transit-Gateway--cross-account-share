output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = aws_ec2_transit_gateway.this.id
}

output "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  value       = aws_ec2_transit_gateway.this.arn
}

output "transit_gateway_route_table_id" {
  description = "Default TGW route table ID"
  value       = aws_ec2_transit_gateway.this.association_default_route_table_id
}