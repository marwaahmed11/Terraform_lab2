resource "aws_vpc" "iti-vpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "subnets" {
  cidr_block       = var.subnet-cidr[count.index]
  count = length(var.subnet-cidr)
  vpc_id = aws_vpc.iti-vpc.id
    tags = {
    Name = var.subnet-name[count.index]
  }

}