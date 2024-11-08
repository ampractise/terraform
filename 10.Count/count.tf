/*
  Count help to create multiple identical resources using same resource block.
  use count.index to tag resources with different names
  you can use count.index with list as well to returened indexed item
*/


provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "abc" {
  name = "abc-${count.index}"
  count = 3
}

variable "names" {
  type = list(string)
  default = [ "john", "smith","rushi" ]
}

resource "aws_iam_user" "abc1" {
  name = var.names[count.index]
  count = 3
}