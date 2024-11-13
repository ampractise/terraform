provider "aws" {
  region = "us-east-1"
}

variable "env" {
  default = "dv"
}

variable "region" {
  default = "us-east-1"
}


resource "aws_instance" "server-2" {
  ami = "abc123"
  instance_type = var.env == "dev"? "t2.small" : "m5.large" 
  subnet_id = "subnet-03857f45f0efb2825"
  //instance_type = var.env == "prod" && var.region=="us-east-1" ? "m5.large": "t2.small"
}