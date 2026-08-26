provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "dev"
      Lab         = "04-remote-state-s3-dynamodb"
      ManagedBy   = "Terraform"
    }
  }
}
