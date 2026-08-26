variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

# Variable marked as sensitive (masked in CLI stdout)
variable "db_password" {
  type        = string
  description = "Database master password"
  sensitive   = true
  default     = "SuperSecretPass123!"
}
