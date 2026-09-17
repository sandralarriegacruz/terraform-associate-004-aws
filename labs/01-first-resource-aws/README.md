# 🧪 Lab 01: First Resource on AWS (VPC)

## 🎯 Lab Objectives
1. Experience the primary Terraform CLI workflow (`init`, `plan`, `apply`, `destroy`).
2. Understand how Terraform downloads and locks the AWS provider using `.terraform.lock.hcl`.
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
   terraform state show aws_vpc.main
   ```
6. **Clean up resources**:
   ```bash
   terraform destroy
   ```
