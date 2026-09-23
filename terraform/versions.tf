terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "aws-platform-lab-tfstate-785772044648"
    key            = "dev/network/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "aws-platform-lab-tflocks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      ManagedBy   = "Terraform"
      Environment = var.environment
    }
  }
}

