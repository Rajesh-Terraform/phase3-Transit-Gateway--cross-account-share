aws_region = "ap-south-1"

hub_account_id = "YOUR_HUB_ACCOUNT_ID"

hub_role_arn = "arn:aws:iam::YOUR_HUB_ACCOUNT_ID:role/github-actions-terraform-role-v1"

spoke_account_id = "434097521299"

spoke_role_arn = "arn:aws:iam::434097521299:role/github-actions-terraform-role-v1"


# Phase 1 HUB VPC
hub_vpc_id = "vpc-HUB_VPC_ID"

hub_vpc_cidr = "HUB_VPC_CIDR"

hub_subnet_ids = [
  "subnet-HUB_SUBNET_1",
  "subnet-HUB_SUBNET_2"
]

hub_route_table_ids = [
  "rtb-HUB_PRIVATE_RT_1",
  "rtb-HUB_PRIVATE_RT_2"
]


# Phase 2 SPOKE VPC
spoke_vpc_id = "vpc-SPOKE_VPC_ID"

spoke_vpc_cidr = "10.1.0.0/16"

spoke_subnet_ids = [
  "subnet-SPOKE_SUBNET_1",
  "subnet-SPOKE_SUBNET_2"
]

spoke_route_table_ids = [
  "rtb-SPOKE_PRIVATE_RT_1",
  "rtb-SPOKE_PRIVATE_RT_2"
]