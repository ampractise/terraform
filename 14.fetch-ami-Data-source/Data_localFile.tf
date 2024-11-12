/*
  -  local file also get stored in tfstate file.
      you can see all data there

  - path.module returns current folder path
  - with data, provide resources type and anyname
*/

data "local_file" "foo" {
  filename = "./${path.module}/demo.txt"
}