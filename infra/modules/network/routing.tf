resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "route-association-publicA-subnet" {
  subnet_id      = aws_subnet.publicA-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "route-association-publicB-subnet" {
  subnet_id      = aws_subnet.publicB-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "route-association-publicC-subnet" {
  subnet_id      = aws_subnet.publicC-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_nat_gateway" "natA" {
  subnet_id      = aws_subnet.publicA-subnet.id
  allocation_id = aws_eip.eipA.id
  
  tags = {
    Name = "natA"
  }
}

resource "aws_nat_gateway" "natB" {
  subnet_id      = aws_subnet.publicB-subnet.id
  allocation_id = aws_eip.eipB.id
  
  tags = {
    Name = "natB"
  }
}


resource "aws_nat_gateway" "natC" {
  subnet_id      = aws_subnet.publicC-subnet.id
  allocation_id = aws_eip.eipC.id
  
  tags = {
    Name = "natC"
  }
}

resource "aws_route_table" "privateRouteA" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natA.id
  }

  tags = {
    Name = "private-routeA"
  }
}

resource "aws_route_table" "privateRouteB" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natB.id
  }

  tags = {
    Name = "private-routeB"
  }
}

resource "aws_route_table" "privateRouteC" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natB.id
  }

  tags = {
    Name = "private-routeB"
  }
}

resource "aws_route_table_association" "privateAppA" {
  subnet_id      = aws_subnet.privateAppA-subnet.id
  route_table_id = aws_route_table.privateRouteA.id
}

resource "aws_route_table_association" "privateDbA" {
  subnet_id      = aws_subnet.privateDbA-subnet.id
  route_table_id = aws_route_table.privateRouteA.id
}

resource "aws_route_table_association" "privateAppB" {
  subnet_id      = aws_subnet.privateAppB-subnet.id
  route_table_id = aws_route_table.privateRouteB.id
}

resource "aws_route_table_association" "privateDbB" {
  subnet_id      = aws_subnet.privateDbB-subnet.id
  route_table_id = aws_route_table.privateRouteB.id
}

resource "aws_route_table_association" "privateAppC" {
  subnet_id      = aws_subnet.privateAppC-subnet.id
  route_table_id = aws_route_table.privateRouteC.id
}

resource "aws_route_table_association" "privateDbC" {
  subnet_id      = aws_subnet.privateDbC-subnet.id
  route_table_id = aws_route_table.privateRouteC.id
}


