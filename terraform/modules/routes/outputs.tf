output "route_ids" {
  description = "Created route IDs"
  value       = [for route in aws_route.this : route.id]
}