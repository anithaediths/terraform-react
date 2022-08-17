include {
    path = find_in_parent_folders()
}

terraform {
   # source = "../../../src/resources//s3"
    source = "../../../src//my-s3"
}

inputs = {
  bucket_name    = "dev-third-bucket"
}