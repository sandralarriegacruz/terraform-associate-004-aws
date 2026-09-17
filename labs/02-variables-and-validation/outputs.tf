output "vpc_id" {
  value       = aws_vpc.this.id
  description = "The ID of the created VPC"
}

output "deployment_environment" {
  value       = var.environment
  description = "The deployment environment"
}