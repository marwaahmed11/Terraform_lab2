variable "vpc-cidr" {
  
}
variable "vpc-name" {
  
}
variable "igw-name" {

}

variable "subnet-cidr" {
  type = list
}
variable "subnet-name" {
  type = list
}

variable "route-table-public" {
 
}

variable "route-table-public-cidr"{

}
variable "route-table-private"{

}

variable "nat-name"{
    
}
variable "security-group-name"{
    
}

variable "ec2-public-name"{
    
}
variable "ec2-private-name"{
    
}
variable "ami-id"{
    
}