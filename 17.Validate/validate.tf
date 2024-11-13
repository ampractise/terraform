/*
  - terraform validate check the semantics of script.
  - validate happens inside plan step as well
*/

resource "aws_instance" "ec2_server" {
  ami="abc123"
  instance_type = var.instacetype //"t2.micro"

  sky="blue"
}