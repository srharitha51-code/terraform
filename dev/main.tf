provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "test496305"
    key = "dev/terraform.tfstate"
    region = "ap-southeast-2"
  }
}

module "vpc" {
  source   = "../modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  tags     = var.tags
}