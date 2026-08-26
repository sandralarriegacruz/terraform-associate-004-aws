provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Lab         = "02-variables-and-validation"
      ManagedBy   = "Terraform"
    }
  }
}
