terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote backend configuration for S3 with DynamoDB State Locking
  # (Uncomment and complete after bootstrapping base infrastructure in main.tf)
  # backend "s3" {
  #   bucket         = "YOUR-REMOTE-STATE-BUCKET"
  #   key            = "labs/04-remote-state/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "tf-state-locks"
  #   encrypt        = true
  # }
}
