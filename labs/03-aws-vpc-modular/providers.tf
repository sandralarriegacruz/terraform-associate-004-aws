provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "03-aws-vpc-modular"
      ManagedBy   = "Terraform"
    }
  }
}
