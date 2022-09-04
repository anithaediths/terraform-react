terraform {
  required_version = ">= 1.0.0"
}


module "my_s3_buc" {
  source  = "../resources//s3-static"
  bucket_name = var.bucket_name
  website_root = "../ui-code"
}

