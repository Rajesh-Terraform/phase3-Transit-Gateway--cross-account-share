aws_region = "ap-south-1"

transit_gateway_id = "tgw-xxxxxxxxxxxxxxxxx"

spoke_vpc_id = "vpc-xxxxxxxxxxxxxxxxx"

spoke_private_subnet_ids = [
  "subnet-aaaaaaaaaaaaaaaaa",
  "subnet-bbbbbbbbbbbbbbbbb"
]

spoke_route_table_ids = [
  "rtb-aaaaaaaaaaaaaaaaa",
  "rtb-bbbbbbbbbbbbbbbbb"
]

hub_vpc_cidr = "10.0.0.0/16"

spoke_vpc_cidr = "10.1.0.0/16"  