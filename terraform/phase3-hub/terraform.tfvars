aws_region = "ap-south-1"

project_name = "phase3-tgw"

tgw_name = "phase3-hub-tgw"

tgw_description = "Phase 3 Hub Transit Gateway"

amazon_side_asn = 64512

ram_share_name = "phase3-hub-tgw-share"

spoke_account_id = "123456789012"

hub_vpc_id = "vpc-xxxxxxxxxxxxxxxxx"

hub_private_subnet_ids = [
  "subnet-xxxxxxxxxxxxxxxxx",
  "subnet-yyyyyyyyyyyyyyyyy"
]   