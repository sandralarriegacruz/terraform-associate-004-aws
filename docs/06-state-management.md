# 06. State Management & Remote Backends

## 🗄️ State File (`terraform.tfstate`)

The state file tracks mappings between declared code resources and real-world cloud resource IDs.

- Stores metadata, resource IDs, and dependency graphs.
- **Critical**: State files can contain sensitive data in plain text. Never commit `.tfstate` files to version control (Git).

---

## 🔒 Remote Backend with AWS (S3 + DynamoDB)

For team collaboration and state security, use a remote backend:

- **S3 Bucket**: Stores state remotely, durably, and encrypted (`sse_algorithm = "AES256"`).
- **DynamoDB Table**: Provides **State Locking** to prevent concurrent executions of `terraform apply`.

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
```

---

## 📥 Declarative Import (`import` Block)

In recent versions and emphasized in **004 Exam**, Terraform supports declarative resource import using `import` blocks:

```hcl
import {
  to = aws_s3_bucket.existing
  id = "my-existing-bucket-name"
}

resource "aws_s3_bucket" "existing" {
  # Imported resource attributes
}
```

---

## 💡 Typical 004 Exam Questions
1. *Which AWS service provides state locking when using S3 remote backend?*
   - **AWS DynamoDB** (configured via `dynamodb_table`).
2. *What is the purpose of `terraform state rm`?*
   - Removes a resource from state management without destroying the physical cloud resource.
