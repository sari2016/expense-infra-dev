terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-aws-state-dev"
    key    = "expense-dev-frontend" 
    region = "us-east-1"
    dynamodb_table = "82s-aws-state-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}