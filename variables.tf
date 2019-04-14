variable "bastion_key_path" {
  description = "My public ssh key"
  default = "~/.ssh/mohan_awsdemo.pub"
}
variable "bastion_key_name" {
  description = "Desired name of AWS key pair"
  default     = "mohan_awsdemo"
}
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
variable "aws_amis" {
  default = {
    us-east-1 = "ami-0a313d6098716f372"
  }
}
variable "vpc_name"{
  description = "AWS vpc name"
  default = "My VPC"
}
variable "vpc_cidr" {
    default = "10.0.0.0/20"
  description = "the vpc cdir range"
}
variable "public_subnet_a" {
  default = "10.0.1.0/24"
  description = "Public subnet AZ A"
}
variable "public_subnet_b" {
  default = "10.0.2.0/24"
  description = "Public subnet AZ B"
}
variable "public_subnet_c" {
  default = "10.0.3.0/24"
  description = "Public subnet AZ C"
}
variable "private_subnet_a" {
  default = "10.0.4.0/24"
  description = "Private subnet AZ A"
}
variable "private_subnet_b" {
  default = "10.0.5.0/24"
  description = "Private subnet AZ B"
}
variable "private_subnet_c" {
  default = "10.0.6.0/24"
  description = "Private subnet AZ C"
}
