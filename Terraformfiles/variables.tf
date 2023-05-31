variable "REGION" {
  default = "eu-west-1"
  type    = string
}
variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.small"
}
variable "AMI" {
  default = "ami-00aa9d3df94c6c354"
  type    = string
}
variable "Cluster_Name" {
  default = "private-eks-cluster"
  type = string
  
}
variable "MYIP" {
  type = string
}