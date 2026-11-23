terraform {
  backend "s3" {
    bucket = "devansh-p18-tfstate-590507089733"
    key    = "p18/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" { region = "ap-south-1" }

resource "aws_s3_bucket" "demo" {
  bucket = "devansh-p18-gitops-demo-590507089733"
  tags = {
    Project = "p18-gitops"
    Version = "v1"
  }
}
