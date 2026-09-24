aws_region = "ap-south-1"

project_name = "phase3-tgw"

tgw_name        = "phase3-hub-tgw"
tgw_description = "Phase 3 Hub Transit Gateway"

amazon_side_asn = 64512

ram_share_name  = "phase3-hub-tgw-share"
spoke_account_id = "SPOKE_ACCOUNT_ID"

hub_vpc_id = "HUB_VPC_ID"

hub_private_subnet_ids = [
  "HUB_PRIVATE_SUBNET_ID_1",
  "HUB_PRIVATE_SUBNET_ID_2"
]

hub_cidr   = "10.0.0.0/16"
spoke_cidr = "10.1.0.0/16"  