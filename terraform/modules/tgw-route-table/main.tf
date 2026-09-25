resource "aws_ec2_transit_gateway_route_table" "this" {
  transit_gateway_id = var.transit_gateway_id

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}

resource "aws_ec2_transit_gateway_route_table_association" "this" {
  transit_gateway_attachment_id  = var.attachment_id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
} 