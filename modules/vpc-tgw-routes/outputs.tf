output "route_ids" {
  value = [
    for route in aws_route.this : route.id
  ]
}
