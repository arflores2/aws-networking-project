resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "main-vpc"
    Environment = "dev"
  }
}

resource "aws_subnet" "public-subnet" {
  for_each = tomap(var.public_subnets)

  vpc_id = aws_vpc.vpc.id
  cidr_block = each.value[0]
  availability_zone = each.value[1]
  map_public_ip_on_launch = true

  tags = {
    Name = each.key
    Environment = "dev"
  }
}

resource "aws_subnet" "private-subnet" {
  for_each = tomap(var.private_subnets)

  vpc_id = aws_vpc.vpc.id
  cidr_block = each.value[0]
  availability_zone = each.value[1]

  tags = {
    Name = each.key
    Environment = "dev"
  } 
}
