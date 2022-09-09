resource "aws_s3_bucket" "my_static_website" {
  bucket = var.bucket_name

  acl = "public-read"
  website {
    index_document = "index.html"
  }

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket_name}/*"
        }
    ]
}
  POLICY
}

resource "aws_s3_bucket_object" "file" {
  for_each = fileset(var.website_root, "**")

  bucket      = aws_s3_bucket.my_static_website.id
  key         = each.key
  source      = "${var.website_root}/${each.key}"
  source_hash = filemd5("${var.website_root}/${each.key}")
  acl         = "public-read"
  content_type = "text/html"

}
