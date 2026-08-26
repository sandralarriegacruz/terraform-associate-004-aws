# 🧪 Lab 01: First Resource on AWS (S3 Bucket + Random Suffix)

## 🎯 Lab Objectives
1. Experience the primary Terraform CLI workflow (`init`, `plan`, `apply`, `destroy`).
2. Understand how Terraform downloads the AWS provider and `hashicorp/random` plugin.
3. Inspect the generation of the local `terraform.tfstate` file.

---

## 🚀 Execution Steps

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
2. **Validate syntax and formatting**:
   ```bash
   terraform fmt
   terraform validate
   ```
3. **Generate and review execution plan**:
   ```bash
   terraform plan
   ```
4. **Apply changes to provision S3 bucket**:
   ```bash
   terraform apply
   ```
5. **Inspect state file**:
   ```bash
   terraform state list
   terraform state show aws_s3_bucket.lab_bucket
   ```
6. **Clean up resources**:
   ```bash
   terraform destroy
   ```
