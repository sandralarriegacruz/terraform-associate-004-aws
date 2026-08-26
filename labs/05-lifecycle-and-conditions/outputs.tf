output "protected_bucket_arn" {
  value       = aws_s3_bucket.protected_bucket.arn
  description = "Protected S3 bucket ARN"
}

output "zero_downtime_bucket_arn" {
  value       = aws_s3_bucket.zero_downtime_bucket.arn
  description = "Zero downtime S3 bucket ARN"
}
