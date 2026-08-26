output "bucket_names" {
  value       = aws_s3_bucket.validated_bucket[*].id
  description = "List of created S3 bucket names"
}

output "environment_used" {
  value       = var.environment
  description = "Validated environment value"
}
