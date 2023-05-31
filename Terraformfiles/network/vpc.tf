resource "aws_vpc" "vpc" {
    cidr_block = var.CIDR_VPC
    tags = {
      Name="devops-agile-vpc"
    }
}