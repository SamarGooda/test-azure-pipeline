terraform {
  backend "s3" {
    bucket = "terraform-state"
    key    = "terraform/terraform.tfstate"
    # region = "eu-west-1"
  }