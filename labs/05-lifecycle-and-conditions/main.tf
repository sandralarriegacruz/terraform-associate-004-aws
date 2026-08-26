resource "random_id" "suffix" {
  byte_length = 3
}

# 1. Bucket protected against accidental destruction (prevent_destroy)
resource "aws_s3_bucket" "protected_bucket" {
  bucket        = "protected-lab05-${random_id.suffix.hex}"
  force_destroy = false

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Owner = var.bucket_tag_owner
  }
}

# 2. Bucket with create before destroy & postcondition check
resource "aws_s3_bucket" "zero_downtime_bucket" {
  bucket        = "zero-downtime-lab05-${random_id.suffix.hex}"
  force_destroy = true

  lifecycle {
    create_before_destroy = true

    # 004 Exam objective: Postcondition
    postcondition {
      condition     = self.arn != ""
      error_message = "S3 bucket must have a valid ARN after creation."
    }
  }
}
