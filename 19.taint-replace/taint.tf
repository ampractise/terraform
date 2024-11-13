/*
    scenario where lot of changes were made in resources, 
2 ways to handle resource
    1. import changes to terraform
    2. delete and create new resources

    terraform apply -replace="aws_instance.myec2" 

    this will destroy old instance and create new 
*/

resource "aws_instance" "myec2" {
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-03857f45f0efb2825"
}

