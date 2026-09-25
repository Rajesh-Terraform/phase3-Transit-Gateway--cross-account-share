aws_region = "ap-south-1"

spoke_vpc_id = "vpc-XXXXXXXX"

spoke_tgw_subnet_ids = [
  "subnet-XXXXXXXX",
  "subnet-YYYYYYYY"
]

spoke_vpc_route_table_ids = [
  "rtb-XXXXXXXX",
  "rtb-YYYYYYYY"
]

transit_gateway_id = "tgw-XXXXXXXX"

spoke_vpc_cidr = "10.1.0.0/16"

hub_vpc_cidr = "10.0.0.0/16"

ram_resource_share_arn = "arn:aws:ram:ap-south-1:HUB_ACCOUNT_ID:resource-share/XXXXXXXX"

accept_ram_invitation = true
 