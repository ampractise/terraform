/*
  Workspace let you use same script for differnt project.
  In below example - there is no need to change script or values just
    change the workspace using "terraform workspace select dev" and it will pick terraform.workspace as key to fetch data from
    locally declaired map
*/

provider "aws" {
  region = "us-east-1"
}

locals {
  instance_type={
    default = "t2.nano"
    dev = "t2.micro"
    prod = "t2.hyperlarge" /// dont take risk of attracting chanrges by accidentally allocating bigger instace
  }
}

resource "aws_instance" "myec2" {
  ami = "abc-123"
  instance_type = local.instance_type[terraform.workspace]
}