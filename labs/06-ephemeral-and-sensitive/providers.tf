provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "06-ephemeral-and-sensitive"
      ManagedBy   = "Terraform"
    }
  }
}
