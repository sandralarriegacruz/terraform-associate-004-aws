resource "random_id" "suffix" {
  byte_length = 4
}

# 1. S3 Bucket to store remote state (.tfstate)
resource "aws_s3_bucket" "tf_state" {
  bucket        = "tf-state-lab04-${random_id.suffix.hex}"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf_state_encryption" {
  bucket = aws_s3_bucket.tf_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# 2. DynamoDB Table for State Locking
resource "aws_dynamodb_table" "tf_locks" {
  name         = "tf-state-locks-${random_id.suffix.hex}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
