resource "aws_vpc" "app_vpc" {
  cidr_block = "172.0.0.0/25"
  
  tags = {
    Name = "app_vpc"
  }

}

