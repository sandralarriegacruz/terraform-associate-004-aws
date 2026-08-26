output "bucket_name" {
  value       = aws_s3_bucket.lab_bucket.id
  description = "Unique bucket name assigned in AWS"
}

output "bucket_arn" {
  value       = aws_s3_bucket.lab_bucket.arn
  description = "ARN of the created S3 bucket"
}
