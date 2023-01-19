resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.iti-vpc.id

  ingress {
    from_port        = 80 #http
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.route-table-public-cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.route-table-public-cidr]
  }

  tags = {
    Name = var.security-group-name
  }
}