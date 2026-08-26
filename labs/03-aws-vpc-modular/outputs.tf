output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the VPC created via module"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Public subnet IDs"
}
