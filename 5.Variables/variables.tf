/*
  Description in optional
    - but important as is help to understand purpose of variable and where is is used.
      this help new person woring on this
*/

variable "my_ip" {
   default = "0.0.0.0/0"
   description = "this is ip adress"
}

variable "ip_protocol" {
  default = "tcp"
  description = "this is protocol"
}