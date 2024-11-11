
/* Local variables
    Instead of using reapeated values within your script, use local variables.
    declare it once and used antwhere you want

    we have declared sg_tags variable once and used it in resources block
    locals block support function , function are not allowed under variable
    
    NOTE: declared using "locals" used using "local" - see the below code snippet
*/

locals {
  sg_tags = {
    Team = "security_team"
    CreateTime = "date-${formatdate("DDMMYY",timestamp())}"
  }
}

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.sg_tags
}

resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = local.sg_tags
}
