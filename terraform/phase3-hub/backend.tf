terraform {
  backend "s3" {
    bucket = "rajesh-terraform-state-878962827886"
    key    = "phase3/hub/terraform.tfstate"
    region = "ap-south-1"
  }
}  