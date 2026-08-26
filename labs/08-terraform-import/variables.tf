variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "existing_bucket_name" {
  type        = string
  description = "Existing S3 bucket name to import into state"
  default     = "my-manual-existing-bucket"
}
