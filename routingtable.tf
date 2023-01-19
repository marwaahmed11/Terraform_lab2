#public routing table
resource "aws_route_table" "publicRoute" {
  vpc_id =  aws_vpc.iti-vpc.id

  route {
    cidr_block = var.route-table-public-cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.route-table-public
  }
}

resource "aws_route_table_association" "subnet1-route" {
  subnet_id =  aws_subnet.subnets[0].id
  route_table_id = aws_route_table.publicRoute.id
}

#private routing table
resource "aws_route_table" "privateRoute" {
  vpc_id =  aws_vpc.iti-vpc.id

  route {
    cidr_block = var.route-table-public-cidr
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = var.route-table-private
  }
}

resource "aws_route_table_association" "subnet2-route" {
  subnet_id =  aws_subnet.subnets[1].id
  route_table_id = aws_route_table.privateRoute.id
}
