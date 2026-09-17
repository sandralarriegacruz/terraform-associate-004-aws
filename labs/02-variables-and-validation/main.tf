provider "aws" {
  region = var.aws_region
}

# Bloque para estandarizar nombres de etiquetas (tags)
locals {
  common_tags = {
    Environment = var.environment
    Project     = "my-terraform-project"
    ManagedBy   = "Terraform"
    Owner       = "Sandra Student"
  }
}

# Creamos una VPC cuyo nombre depende del entorno
resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = merge(local.common_tags, {
    Name = "${var.environment}-vpc"
  })
}












































