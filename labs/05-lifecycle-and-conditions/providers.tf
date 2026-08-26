provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "05-lifecycle-and-conditions"
      ManagedBy   = "Terraform"
    }
  }
}
