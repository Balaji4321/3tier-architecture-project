terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASCVNAG6MPVD2R2BJ"
  secret_key = "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"
}