terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
  skip_region_validation      = var.aws_skip_credentials_validation
  skip_credentials_validation = var.aws_skip_credentials_validation
  skip_metadata_api_check     = var.aws_skip_credentials_validation
  skip_requesting_account_id  = var.aws_skip_credentials_validation
  s3_use_path_style           = var.aws_skip_credentials_validation
  ec2_metadata_service_endpoint = var.aws_server

  endpoints {
    ec2 = var.aws_server
    s3   = var.aws_server
    sns = var.aws_server
    sqs = var.aws_server
  }
}