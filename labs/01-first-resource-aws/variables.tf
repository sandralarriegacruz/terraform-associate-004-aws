variable "aws_region" {
  type        = string
  description = "AWS Region to deploy the S3 bucket"
  default     = "us-east-1"
}

variable "bucket_prefix" {
  type        = string
  description = "Prefix for the unique S3 bucket name"
  default     = "tf-associate-lab01"
}
