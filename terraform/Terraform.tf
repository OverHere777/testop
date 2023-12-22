terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.30"
    }
  }

  required_version = ">=1.5.0"
    
    backend "s3" {
        bucket = "eksrestore1"
        region = "us-east-2"
        key = "eks"
    }

}

provider "aws" {
  region  = "us-east-2"
}

module "vpc" {
  source = "./modules/vpc"

  cidr_block = "10.0.0.0/24"
  name = "EKSVPC"
  tags = {
    ambiente = "eksdev"
  }
}
