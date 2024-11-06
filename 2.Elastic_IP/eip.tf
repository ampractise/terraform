/*
  eip resource is added.
  remember to destroy the resource as it can be charged if kept ideal for long
  after creating eip, check tfstate file for attributes 
*/

provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}