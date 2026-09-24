terraform {
  backend "s3" {
    bucket = "rajesh-terraform-state-2026"
    key    = "phase3/spoke/terraform.tfstate"
    region = "ap-south-1"
  }
}  