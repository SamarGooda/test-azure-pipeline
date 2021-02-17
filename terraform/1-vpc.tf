###################
# VPC 
###################

resource "aws_vpc" "new" {
  cidr_block           = "20.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "new"
  }
}


resource "aws_vpc" "main" {
  cidr_block           = "40.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}

resource "aws_vpc" "old" {
  cidr_block           = "50.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "old"
  }
}

resource "aws_vpc" "yy" {
  cidr_block           = "50.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "yy"
  }
}
