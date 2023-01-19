resource "aws_instance" "ec2_public" {
    tags = {
        Name = var.ec2-public-name
    }
    ami = var.ami-id
    subnet_id = aws_subnet.subnets[0].id
    instance_type = "t2.micro"
    associate_public_ip_address = "true" #enable ip 
    security_groups = [aws_security_group.allow_tls.id]
  
    user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    EOF

}

resource "aws_instance" "ec2_private" {
    tags = {
        Name = var.ec2-private-name
    }
    ami = var.ami-id
    subnet_id = aws_subnet.subnets[1].id
    instance_type = "t2.micro"
    associate_public_ip_address = "false" #enable ip 
    security_groups = [aws_security_group.allow_tls.id]
  
    user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    EOF

}

