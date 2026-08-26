# 05. Terraform Modules

## 📦 What is a Module?
A module is a container for multiple resources configured together in a single directory.

- **Root Module**: The primary working directory where Terraform CLI commands (`init`, `plan`, `apply`) are executed.
- **Child Module**: A module called from within another configuration using a `module` block.

---

## 🏗️ Calling a Module Syntax

```hcl
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.0"

  name = "my-dev-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
}
```

---

## 🌐 Module Sources

Terraform supports multiple module sources:
- **Local Paths**: `source = "./modules/s3-bucket"`
- **Terraform Registry**: `source = "hashicorp/consul/aws"`
- **Git Repositories**: `source = "git::https://example.com/vpc.git"`
- **HTTP / S3 Buckets**: `source = "https://example.com/module.zip"`

---

## 💡 Typical 004 Exam Questions
1. *How do you access output values exposed by a child module in your root module?*
   - Using the syntax `module.<MODULE_NAME>.<OUTPUT_NAME>`.
2. *Is `terraform init` required when adding or modifying a module source?*
   - Yes. `terraform init` installs and downloads child modules.
