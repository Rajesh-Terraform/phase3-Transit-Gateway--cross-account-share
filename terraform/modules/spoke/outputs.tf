output "vpc_id" {
  description = "Spoke VPC ID"
  value       = aws_vpc.this.id
}

output "private_subnet_ids" {
  description = "Spoke private subnet IDs"
  value       = aws_subnet.private[*].id
}  