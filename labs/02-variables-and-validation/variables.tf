variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment (dev, staging, prod)"
  default     = "dev"

  # 004 Exam objective: Custom Validation block
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment variable must be one of: dev, staging, prod."
  }
}

variable "instance_count" {
  type        = number
  description = "Number of instances to create"
  default     = 1

  validation {
    condition     = var.instance_count >= 1 && var.instance_count <= 5
    error_message = "The instance count must be a number between 1 and 5."
  }
}
