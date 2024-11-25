/*
    benefit: once plan is saved, changed made in tf file does not affet file, hence to create a same infra again, use saved plan file

    saving plan to file
     terraform plan -out infra.plan

    to use plan 
     terraform apply "infra.plan"
 
    to see content of file - terraform show infra.plan     terraform show -json infra.plan
*/

resource "local_file" "newfile" {
  content = "my file do not have any data"
  filename = "sample.txt"
}

