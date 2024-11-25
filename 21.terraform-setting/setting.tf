/*
    terraform version
    providers verions
*/

terraform {
  required_version = "1.9.6"
  required_providers {
    aws = {
      version = "5.56"
      source = "hashicorp/aws"
    }
  }
}
resource "local_file" "newfile" {
  content = "my file do not have any data"
  filename = "sample.txt"
}

