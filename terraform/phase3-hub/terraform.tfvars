aws_region = "ap-south-1"

project_name = "phase3-tgw"

tgw_name = "phase3-hub-tgw"

tgw_description = "Phase 3 Hub Transit Gateway"

amazon_side_asn = 64512

ram_share_name = "phase3-hub-tgw-share"

# REAL SPOKE AWS ACCOUNT ID
spoke_account_id = "123456789012"

# REAL HUB VPC ID
hub_vpc_id = "vpc-0123456789abcdef0"

# REAL HUB PRIVATE SUBNET IDs
hub_private_subnet_ids = [
  "subnet-0123456789abcdef0",
  "subnet-0123456789abcdef1"
]   