terraform {
  backend "s3" {
    bucket = "workshop-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucket_name[0]
}


resource "aws_s3_bucket" "bucket2" {
  bucket = var.bucket_name[1]
}