output "aws_region_configured" {
  value       = var.aws_region
  description = "Configured AWS Region for this deployment"
}

output "environment_configured" {
  value       = var.environment
  description = "Active configured environment"
}
