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
    
    publicA_subnet_cidr = var.publicA_subnet_cidr
    publicA_availability_zone = var.publicA_availability_zone

    publicB_subnet_cidr = var.publicB_subnet_cidr
    publicB_availability_zone = var.publicB_availability_zone

    publicC_subnet_cidr = var.publicC_subnet_cidr
    publicC_availability_zone = var.publicC_availability_zone

    privateAppA_subnet_cidr = var.privateAppA_subnet_cidr
    privateAppA_availability_zone = var.privateAppA_availability_zone

    privateAppB_subnet_cidr = var.privateAppB_subnet_cidr
    privateAppB_availability_zone = var.privateAppB_availability_zone

    privateAppC_subnet_cidr = var.privateAppC_subnet_cidr
    privateAppC_availability_zone = var.privateAppC_availability_zone

    privateDbA_subnet_cidr = var.privateDbA_subnet_cidr
    privateDbA_availability_zone = var.privateDbA_availability_zone

    privateDbB_subnet_cidr = var.privateDbB_subnet_cidr
    privateDbB_availability_zone = var.privateDbB_availability_zone

    privateDbC_subnet_cidr = var.privateDbC_subnet_cidr
    privateDbC_availability_zone = var.privateDbC_availability_zone
}
