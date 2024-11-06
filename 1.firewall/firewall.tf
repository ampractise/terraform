/*
    Added th aws security group resource
    Added ingress and egress resources.
    Note: Though we assign ingress and egress to security group, 
          they are different object and not a part of security group
*/

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_tls" {
    name = "terraform-firewall"
    description = "managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 90
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}