resource "aws_subnet" "public_subnet"{
    vpc_id = aws_vpc.app_vpc.id
    cidr_block = "172.0.0.0/25"
    availability_zone = "us-east-1a"
    
}


resource "aws_route_table_association" "route_table_with_subnet" {
  route_table_id = aws_route_table.vpc_route_table.id
  subnet_id= aws_subnet.public_subnet.id

}


resource "aws_route_table" "vpc_route_table" {
  vpc_id = aws_vpc.app_vpc.id
  


  tags= {
    Name= "gateway"
  }
  
}


# Egress Route: Allow outbound traffic to the internet
resource "aws_route" "egress_internet" {
  route_table_id         = aws_route_table.vpc_route_table.id
  destination_cidr_block = "0.0.0.0/0"  # Route all traffic
  gateway_id             = aws_internet_gateway.gateway.id
}

