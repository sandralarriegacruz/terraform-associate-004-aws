# Declarative 'import' block (Modern approach evaluated in 004 Exam)
# Replace 'var.existing_bucket_name' with your real pre-existing AWS S3 bucket name
import {
  to = aws_s3_bucket.imported_bucket
  id = var.existing_bucket_name
}

# Resource block where imported properties will bind
resource "aws_s3_bucket" "imported_bucket" {
  bucket        = var.existing_bucket_name
  force_destroy = true
}
