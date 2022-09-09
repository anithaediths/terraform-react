include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../src//my-s3"
}

inputs = {
  bucket_name  = "uat-my-first-react-app"
}