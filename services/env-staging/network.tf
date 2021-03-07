#Provision vpc, subnets, igw, route table
resource "aws_vpc" "master_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true

    tags = {
        Name = "Master VPC"
        BuildWith = "terraform"
    }
  
}

resource "aws_subnet" "public_subnet" {
    vpc_id = "${ aws_vpc.master_vpc.id }"
    cidr_block = "value"
  
}