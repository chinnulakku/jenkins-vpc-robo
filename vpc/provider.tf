terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }

  backend "s3" {
    bucket = "arunasudha-remote-state"
    key = "vpc"
    region = "us-east-1"
    dynamodb_table = "arunasudha-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}