output "s3_bucket_state_name" {
  value       = aws_s3_bucket.tf_state.id
  description = "Remote state S3 bucket name"
}

output "dynamodb_table_locks_name" {
  value       = aws_dynamodb_table.tf_locks.id
  description = "DynamoDB state locking table name"
}
