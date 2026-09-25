aws_region = "ap-south-1"

tgw_name = "phase3-hub-tgw"

amazon_side_asn = 64512

ram_name = "phase3-hub-to-spoke"

spoke_account_id = "434097521299"

hub_vpc_id = "vpc-XXXXXXXX"

hub_tgw_subnet_ids = [
  "subnet-XXXXXXXX",
  "subnet-YYYYYYYY"
]

hub_vpc_route_table_ids = [
  "rtb-XXXXXXXX",
  "rtb-YYYYYYYY"
]

hub_vpc_cidr = "10.0.0.0/16"

spoke_vpc_cidr = "10.1.0.0/16"

allow_external_principals = true
 