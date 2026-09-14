aws_region  = "ap-south-1"
environment = "prod"

transit_gateway_id = "tgw-xxxxxxxxxxxxxxxxx"

spoke_vpc_id = "vpc-yyyyyyyyyyyyyyyyy"

spoke_tgw_subnet_ids = [
  "subnet-ccccccccccccccccc",
  "subnet-ddddddddddddddddd"
]

spoke_vpc_route_table_ids = [
  "rtb-ccccccccccccccccc",
  "rtb-ddddddddddddddddd"
]

hub_vpc_cidr = "10.0.0.0/16"

tags = {
  Owner      = "Network"
  CostCenter = "Networking"
}
