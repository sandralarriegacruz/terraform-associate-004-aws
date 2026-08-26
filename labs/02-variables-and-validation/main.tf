# Derived local values
locals {
  name_prefix = "app-${var.environment}"
  common_tags = {
    Environment = var.environment
    Count       = var.instance_count
  }
}

# Create multiple S3 buckets using validated input variables
resource "random_id" "suffix" {
  count       = var.instance_count
  byte_length = 3
}

resource "aws_s3_bucket" "validated_bucket" {
  count  = var.instance_count
  bucket = "${local.name_prefix}-bucket-${count.index + 1}-${random_id.suffix[count.index].hex}"

  tags = local.common_tags
}
