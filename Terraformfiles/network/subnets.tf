resource "aws_subnet" "publicsubnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.CIDR_PubSubnet
  map_public_ip_on_launch = true
  enable_resource_name_dns_a_record_on_launch=true
  availability_zone = var.AvaZone_1
  tags = {
    Name="deveps-agile-public"
  }
}
resource "aws_subnet" "privatesubnet1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.CIDR_PrivSubnet1
  availability_zone = var.AvaZone_1
}
resource "aws_subnet" "privatesubnet2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.CIDR_PrivSubnet2
  availability_zone = var.AvaZone_2
}