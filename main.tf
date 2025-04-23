terraform {
  required_version = "1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "random_pet" "this" {
  length = 5
}

module "bucket" {
  source     = "./s3"
  name       = "${random_pet.this.id}-${var.enviroment}"
  enviroment = var.enviroment
}

module "ec2" {
  source     = "./ec2"
  enviroment = var.enviroment
  instance_tags = {
    Name        = "Ubuntu"
    Project     = "Curso de Terraform"
    Environment = "${var.enviroment}"
  }
}