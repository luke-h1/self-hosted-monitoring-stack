provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket  = "shms-terraform-state"
    key     = "vpc/terraform.tfstate"
    encrypt = true
  }
}