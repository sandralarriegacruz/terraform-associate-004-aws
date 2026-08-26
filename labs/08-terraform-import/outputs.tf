output "imported_bucket_arn" {
  value       = aws_s3_bucket.imported_bucket.arn
  description = "ARN of the imported S3 bucket in Terraform state"
}
