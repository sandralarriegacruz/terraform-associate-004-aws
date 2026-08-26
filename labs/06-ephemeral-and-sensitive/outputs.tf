output "secret_arn" {
  value       = aws_secretsmanager_secret.db_secret.arn
  description = "ARN of the secret in AWS Secrets Manager"
}

# Output marked sensitive because it derives from var.db_password
output "db_password_configured" {
  value       = var.db_password
  sensitive   = true
  description = "Configured password (Masked in CLI stdout)"
}
