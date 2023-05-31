output "VPC_ID" {
    value = aws_vpc.vpc.id
}
output "VPC_CIDR" {
    value = aws_vpc.vpc.cidr_block
}
output "PUB_SUBNET_ID" {
    value = aws_subnet.publicsubnet.id
}
output "PRIV_SUBNET_ID1" {
    value = aws_subnet.privatesubnet1.id
}
output "PRIV_SUBNET_ID2" {
    value = aws_subnet.privatesubnet2.id
}