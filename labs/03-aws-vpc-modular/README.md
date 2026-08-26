# 🧪 Lab 03: Modular Network Architecture with AWS VPC (Terraform Registry)

## 🎯 Lab Objectives
1. Consume a public module from the **Terraform Registry** (`terraform-aws-modules/vpc/aws`).
2. Learn how `terraform init` fetches and installs specified module versions.
3. Access child module outputs from the root module (`module.vpc.vpc_id`).

---

## 🚀 Execution Steps

1. **Initialize and download module**:
   ```bash
   terraform init
   ```
2. **Generate plan**:
   ```bash
   terraform plan
   ```
3. **Apply infrastructure changes**:
   ```bash
   terraform apply
   ```
4. **Clean up resources**:
   ```bash
   terraform destroy
   ```
