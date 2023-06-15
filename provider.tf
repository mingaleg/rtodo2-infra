provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-674635435977"
    key    = "terraform"
    region = "us-east-1"
  }
}
