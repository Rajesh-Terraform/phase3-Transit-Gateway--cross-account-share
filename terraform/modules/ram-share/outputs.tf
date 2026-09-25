output "share_arn" {
  description = "Accepted RAM resource share ARN"
  value       = aws_ram_resource_share_accepter.this.share_arn
}  