module "tgw" {
  source = "../modules/transit-gateway"

  name        = "phase3-tgw"
  description = "Phase 3 Cross Account Transit Gateway"

  amazon_side_asn = 64512

  environment = "dev"
}  