/*
  TF_LOG levels = TRACE, DEBUG, INFO, WARN, ERROR
  TF_LOG should be set to one of above value. its different for WIN, LINUX, MACOS
  
  command to set TF_LOG is 
    - Windows = set TF_LOG=INFO
    - LINUX and MAC = export TF_LOG=INFO

  To store log in file
  set TF_LOG_PATH=tf-log.txt

  WIN: "set" will set env only for that cmd session. if you need to all then add it in system env varilbes
*/


provider "aws" {
  region = "us-east-01"
}

resource "local_file" "bar" {
  content = "foo bar 1"
  filename = "${path.module}/foo.txt"
}