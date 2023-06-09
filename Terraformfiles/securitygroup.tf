resource "aws_security_group" "eks-sg" {
  vpc_id = module.network.VPC_ID
  ingress {
    cidr_blocks = [
      module.network.VPC_CIDR,
    ]
    
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "devops-agile-sg"
  }
}
resource "aws_security_group" "security_group1" {
  vpc_id = module.network.VPC_ID
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "devops-agile-sg"
  }
}