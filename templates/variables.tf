variable "aws_region" {
  type        = string
  description = "AWS Region where resources will be provisioned"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment name (dev, staging, prod)"
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of the following values: dev, staging, prod."
  }
}
