# Random suffix resource to guarantee unique S3 bucket name in AWS
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# AWS S3 Bucket resource creation
resource "aws_s3_bucket" "lab_bucket" {
  bucket        = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"
  force_destroy = true
}

# Enable bucket versioning
resource "aws_s3_bucket_versioning" "lab_bucket_versioning" {
  bucket = aws_s3_bucket.lab_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
