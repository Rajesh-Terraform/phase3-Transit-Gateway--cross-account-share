resource "aws_ec2_transit_gateway_route_table" "this" {
  transit_gateway_id = var.transit_gateway_id

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}

resource "aws_ec2_transit_gateway_route_table_association" "hub" {
  transit_gateway_attachment_id  = var.hub_attachment_id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_association" "spoke" {
  transit_gateway_attachment_id  = var.spoke_attachment_id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route" "hub_to_spoke" {
  destination_cidr_block         = var.spoke_cidr
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = var.spoke_attachment_id
}

resource "aws_ec2_transit_gateway_route" "spoke_to_hub" {
  destination_cidr_block         = var.hub_cidr
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = var.hub_attachment_id
} 