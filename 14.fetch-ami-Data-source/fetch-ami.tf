provider "aws" {
  region = "us-east-01"
}

data "aws_ami" "example" {
  #executable_users = ["self"]
  most_recent      = true
  #name_regex       = "^myami-[0-9]{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ec2-macos-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.image_id
  instance_type = "t2.micro"
}

