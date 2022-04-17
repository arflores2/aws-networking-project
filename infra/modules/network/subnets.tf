resource "aws_subnet" "publicA-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.publicA_subnet_cidr
  availability_zone = var.publicA_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "publicA-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "publicB-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.publicB_subnet_cidr
  availability_zone = var.publicB_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "publicB-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "publicC-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.publicC_subnet_cidr
  availability_zone = var.publicC_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "publicC-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateAppA-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateAppA_subnet_cidr
  availability_zone = var.privateAppA_availability_zone

  tags = {
    Name = "privateAppA-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateAppB-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateAppB_subnet_cidr
  availability_zone = var.privateAppB_availability_zone

  tags = {
    Name = "privateAppB-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateAppC-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateAppC_subnet_cidr
  availability_zone = var.privateAppC_availability_zone

  tags = {
    Name = "privateAppC-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateDbA-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateDbA_subnet_cidr
  availability_zone = var.privateDbA_availability_zone

  tags = {
    Name = "privateDbA-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateDbB-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateDbB_subnet_cidr
  availability_zone = var.privateDbB_availability_zone

  tags = {
    Name = "privateDbB-subnet"
    Environment = "dev"
  }
}

resource "aws_subnet" "privateDbC-subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.privateDbC_subnet_cidr
  availability_zone = var.privateDbC_availability_zone

  tags = {
    Name = "privateDbC-subnet"
    Environment = "dev"
  }
}
