terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3" # using stable version
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}