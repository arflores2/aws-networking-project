resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Env = "dev"
    Name = "internet-gateway"
  }
}