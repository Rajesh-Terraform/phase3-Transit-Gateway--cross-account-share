aws_region  = "ap-south-1"
environment = "prod"

spoke_account_id = "434097521299"

hub_vpc_id = "vpc-xxxxxxxxxxxxxxxxx"

hub_tgw_subnet_ids = [
  "subnet-aaaaaaaaaaaaaaaaa",
  "subnet-bbbbbbbbbbbbbbbbb"
]

hub_vpc_route_table_ids = [
  "rtb-aaaaaaaaaaaaaaaaa",
  "rtb-bbbbbbbbbbbbbbbbb"
]

hub_vpc_cidr   = "10.0.0.0/16"
spoke_vpc_cidr = "10.10.0.0/16"

spoke_state_bucket = "YOUR-SPOKE-STATE-BUCKET"

tags = {
  Owner      = "Network"
  CostCenter = "Networking"
}
