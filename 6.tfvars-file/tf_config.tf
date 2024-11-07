/*
  prod level file structure 
  ==  main config file --> variables file --> *.tfvars file

 things to remember about tfvars file
  - you can declare variables in variable.tf file but you should assign value in tfvars file only
  - you can use terrafrom.tfvars - terraform will automatically find this file
  - you can give name as per your env as weell but you have to explicitly give file name in cmd
      terraform plan -var-file=dev.tfvars
  - variable vale picked from tfvars file, in case tfvars do not have value, default vallue from variables is picked
  - when variable not present in variable.tf then variable value asked on cmd


  terraform plan   == terraform.tfvars file picked for values
  terraform plan -var-file=dev.tfvars   == dev.tfvars file is picked
*/

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allow_tls" {
    name = var.sg_name
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