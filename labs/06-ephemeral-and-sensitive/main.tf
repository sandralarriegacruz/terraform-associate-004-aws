resource "random_id" "suffix" {
  byte_length = 3
}

# 1. Secure storage in AWS Secrets Manager
resource "aws_secretsmanager_secret" "db_secret" {
  name                    = "db-password-lab06-${random_id.suffix.hex}"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "db_secret_val" {
  secret_id     = aws_secretsmanager_secret.db_secret.id
  secret_string = var.db_password
}
