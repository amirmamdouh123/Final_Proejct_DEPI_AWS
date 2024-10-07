resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.app_vpc.id
  tags= {
    Name= "gateway"
  }
}