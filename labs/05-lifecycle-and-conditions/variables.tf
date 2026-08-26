variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "bucket_tag_owner" {
  type        = string
  description = "Owner tag value"
  default     = "ops-team"
}
