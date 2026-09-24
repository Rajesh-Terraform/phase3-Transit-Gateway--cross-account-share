terraform {
  backend "s3" {
    bucket = "YOUR-TERRAFORM-STATE-BUCKET"
    key    = "phase3/hub/terraform.tfstate"
    region = "ap-south-1"
  }
}  