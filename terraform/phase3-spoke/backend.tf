terraform {
  backend "s3" {
    bucket = "harish-gaddam-bucket123"
    key    = "phase3/spoke/terraform.tfstate"
    region = "ap-south-1"
  }
}       