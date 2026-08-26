provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "07-dynamic-blocks-and-expressions"
      ManagedBy   = "Terraform"
    }
  }
}
