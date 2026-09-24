aws_region = "ap-south-1"

project_name = "phase3-tgw"

transit_gateway_id = "tgw-XXXXXXXX"

spoke_vpc_id = "vpc-XXXXXXXX"

spoke_private_subnet_ids = [
  "subnet-XXXXXXXX",
  "subnet-YYYYYYYY"
]

hub_cidr   = "10.0.0.0/16"
spoke_cidr = "10.1.0.0/16"  