/*
  String Number Boolean List Set Map
*/


provider "aws" {
  region = "us-east-1"
}

//// String
variable "String1" {
  default = "Amol"
}
output "str_data" {
  
  value = var.String1
}

//// Number
variable "number1" {
  type = number
  default = 123456789
}
output "number_data" {
  value = var.number1
}

///  List  == collection of values
variable "list1" {
#  type = list(number)
#  type = list(string)
#  type = list(Boolean)

type = list
 default = [123,"amol",true]
}
output "list_data" {
  # value = var.list1 /// to extract all values 
  value = var.list1[0]  /// to extract 1 value
}

////// Map

variable "map1" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    team="dev" 
    code=123
  }
}
output "map_data" {
  # value = var.map1   /// to extract all values 
  value = var.map1["team"]  /// to extract 1 value
}