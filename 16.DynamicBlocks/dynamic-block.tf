/*
  dynamic blocks alows us to dynamically construct repeatable nested blocks which is supported 
    inside resource, Data, provider, and provisioner blocks

  or you can use Iterator keyword 
*/


provider "aws" {
  region = "us-east-1"
}

variable "sg_ports" {
  type        = list(number)
  default     = [8200, 8201, 8300, 9200, 9500]
  description = "port list value"
}

resource "aws_security_group" "demo-sg" {
  name        = "dynamic-sg"
  description = "this resource using dynamic block"

  dynamic "ingress" {
    for_each = var.sg_ports

    iterator = port  /// use port + 'value'
    content {
      from_port   = port.value // ingress.value - name of block + 'value'
      to_port     = port.value //ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.sg_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
}