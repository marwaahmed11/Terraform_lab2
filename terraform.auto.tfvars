#vpc
vpc-cidr = "10.0.0.0/16"
vpc-name = "terraform-vpc"

#internet-gateway
igw-name = "terraform-internet-gate-way"

#subnet
subnet-cidr = ["10.0.0.0/24","10.0.1.0/24"]
subnet-name = ["terraform-public-subnet","terraform-private-subnet"]

#public routing table
route-table-public = "terraform-routingtable-public"
route-table-private = "terraform-routingtable-private"
route-table-public-cidr = "0.0.0.0/0"

#nat
nat-name = "terrform-nat"

#security group
security-group-name ="security-group-test"
ec2-public-name = "terraform-ec2-public"
ec2-private-name = "terraform-ec2-private"

#aws-ami
ami-id = "ami-0b5eea76982371e91"