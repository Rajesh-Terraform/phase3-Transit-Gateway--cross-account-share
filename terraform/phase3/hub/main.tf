resource "aws_ec2_transit_gateway" "this" {
  amazon_side_asn = var.amazon_side_asn

  tags = {
    Name  = "phase3-tgw"
    Phase = "3"
  }
}  