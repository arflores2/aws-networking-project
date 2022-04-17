terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = var.aws_region
    profile = var.aws_profile

}

module "network" {
    source = "./modules/network"
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
}
