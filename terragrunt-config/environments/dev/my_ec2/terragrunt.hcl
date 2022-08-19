include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../src//my-ec2"
}

inputs = {
  ami  = "ami-0adf9cd48df80c022"
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
}