terraform {
  required_version = ">= 1.0.0"
}


module "my_s3_buc" {
  source  = "../resources//s3"
  bucket_name = var.bucket_name
}

