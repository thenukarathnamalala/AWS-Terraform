terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket         = "thenuka-aws-terraform-state-bucket"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"

  default_tags {
    tags = {
      Project     = "AWS-Terraform"
      Environment = "Dev"
      ManagedBy   = "Terraform"
    }
  }
}