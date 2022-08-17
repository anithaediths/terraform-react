include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../src//my-s3"
}

inputs = {
  bucket_name    = "at-third-bucket"
}