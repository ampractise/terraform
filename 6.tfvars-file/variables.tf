/*
  Description in optional
    - but important as is help to understand purpose of variable and where is is used.
      this help new person woring on this
*/

variable "sg_name" {
  default = "terraform-firewall"
  description = "tfvars file do not have this value, so picked from default value"
}
variable "my_ip" {
   description = "this value picked from tfvars"
}

variable "ip_protocol" {
  default = "UDP"
  description = "this value is picked from tfvars, default value is used when tfvars has no value declared"
}