resource "aws_route" "this" {
  for_each = {
    for route in var.routes :
    "${route.route_table_id}-${route.destination_cidr}" => route
  }

  route_table_id         = each.value.route_table_id
  destination_cidr_block = each.value.destination_cidr
  transit_gateway_id     = var.transit_gateway_id
}