/*
  splat expression [*] allows us to get all attributes created under resources. 
  if count is used then output will show result all counts
*/

resource "aws_iam_user" "new-user" {
  name = "new-user-${count.index}"
  count=3
  path = "/system"
}

output "users" {
  value = aws_iam_user.new-user[*].arn
}