provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "08-terraform-import"
      ManagedBy   = "Terraform"
    }
  }
}
