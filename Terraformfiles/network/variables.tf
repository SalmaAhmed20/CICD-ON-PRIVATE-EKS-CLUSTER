variable "CIDR_VPC" {
    default = "10.1.0.0/16"
    type = string
}
variable "CIDR_PubSubnet" {
    default = "10.1.1.0/24"
    type = string
}
variable "CIDR_PrivSubnet1" {
    default = "10.1.2.0/24"
    type = string
}
variable "CIDR_PrivSubnet2" {
    default = "10.1.3.0/24"
    type = string
}
variable "AvaZone_1" {
  default = "eu-west-1a"
  type = string
}
variable "AvaZone_2" {
  default = "eu-west-1b"
  type = string
}