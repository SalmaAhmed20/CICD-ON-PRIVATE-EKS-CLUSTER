resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "devops-agile-rtbpub"
  }
}
resource "aws_route_table_association" "apub" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.rtb_public.id
}
resource "aws_route_table" "rtb_private" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "devops-agile-rtbpriv"
  }
}
resource "aws_route_table_association" "apriv" {
  subnet_id      = aws_subnet.privatesubnet1.id
  route_table_id = aws_route_table.rtb_private.id
}
resource "aws_route_table_association" "bpriv" {
  subnet_id      = aws_subnet.privatesubnet2.id
  route_table_id = aws_route_table.rtb_private.id
}
resource "aws_route" "rgw" {
  route_table_id = aws_route_table.rtb_public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gw.id
}
resource "aws_route" "rnat" {
  route_table_id = aws_route_table.rtb_private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.nat.id
}