terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.5.0"
    }
  }

  backend "s3" {
    
    bucket = "teja-state-bucket"
    dynamodb_table = "teja-state-table"
    key    = "terraform.tfstate"
    region = "us-east-1"

  }
}