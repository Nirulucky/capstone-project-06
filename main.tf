terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "niranjan_project6_bucket" {
  bucket = "niranjan-project6-terraform-demo"

  tags = {
    Name        = "Niranjan Project 6 Bucket"
    Environment = "Training"
    Project     = "Project-06"
    Owner       = "Niranjan"
  }
}
