terraform {
  required_version = ">= 1.0.0"
}


module "my_ec2" {
  source        = "../resources//ec2"
  ami           = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
}

