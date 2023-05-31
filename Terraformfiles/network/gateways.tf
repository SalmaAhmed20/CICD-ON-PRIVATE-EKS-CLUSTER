resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "devops-agile-gw"
  }
}
resource "aws_eip" "elp" {
  domain = "vpc"
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.elp.id
  subnet_id = aws_subnet.publicsubnet.id
  tags={
    name="devops-agile-nat"
  }  
}
