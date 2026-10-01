module "tgw" {
  source = "../modules/tgw"

  # your TGW variables here
}

module "ram" {
  source = "../modules/ram-share"

  # your RAM variables here
}   