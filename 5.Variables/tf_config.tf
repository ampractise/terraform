/*
  Why to use variables file in terraform
    1. avoid hardcoding the repeatative value
    2. maintenace becomes easy 
    3. when change is requred, you dont have to touch tf config file, avoid human error in editing
    4. in prod level code - most of values are moved to variables.

    naming convetion: always name var file 'variables.tf'
*/

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_tls" {
    name = "terraform-firewall"
    description = "managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "nginx" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.my_ip
  from_port         = 80
  ip_protocol       = var.ip_protocol
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "datadog" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.my_ip
  from_port         = 442
  ip_protocol       = var.ip_protocol
  to_port           = 442
}

resource "aws_vpc_security_group_ingress_rule" "jenkins" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.my_ip
  from_port         = 8080
  ip_protocol       = var.ip_protocol
  to_port           = 8080
}