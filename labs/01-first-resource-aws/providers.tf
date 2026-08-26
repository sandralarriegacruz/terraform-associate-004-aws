provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "01-first-resource-aws"
      ManagedBy   = "Terraform"
    }
  }
}
