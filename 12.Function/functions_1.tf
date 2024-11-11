/*
  IAM user policy is JSON format is kept is seperate file
  Keeping JOSN seperate file help to keep tf-congif clean

IMP NOTE: Terraform doe NOT support USER deafined functione. Only build-in will work
*/
resource "aws_iam_user" "this" {
  name = "demo-kplabs-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "demo-user-policy"
  user = aws_iam_user.this.name

  policy = file("./iam-user-policy.json")  //// file function used here
}

/*  Common functions
    1. lookup (map, key, default)
        e.g. lookup ({a="ay!", b="bye"}, a, "what?" ) output for a is ay! and for c its what?

    2. Count = if you want to execut same resource block multiple times

    3. length works with List, Map, String

    4. element retrives a single element from list  element (list, index) = if index > list then it recount and return value
        e.g. element (["a", "b", "c", "d"], 5) then  output is b

    5. timestamp return "2024-11-11T10:43:19Z"

    6. formatdate (format, timestamp) = e.g. formatdate("DD MMM YYYY", timestap())

    7. file function used to provide path in terraform script
*/