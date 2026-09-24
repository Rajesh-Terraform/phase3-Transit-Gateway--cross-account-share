aws_region = "ap-south-1"

project_name = "phase3-tgw"

tgw_name = "phase3-hub-tgw"

tgw_description = "Phase 3 Hub Transit Gateway"

amazon_side_asn = 64512

ram_share_name = "phase3-hub-tgw-share"

# IMPORTANT: Put the REAL spoke AWS account ID here
spoke_account_id = "123456789012"

# Hub VPC
hub_vpc_id = "vpc-XXXXXXXX"

# Hub CIDR
hub_cidr = "10.0.0.0/16"

# Spoke CIDR
spoke_cidr = "10.1.0.0/16"   