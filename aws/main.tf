provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "bucket-sami-statefile"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}